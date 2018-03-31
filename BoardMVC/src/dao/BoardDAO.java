package dao;

import java.io.*;
import java.sql.*;
import java.sql.Date;
import java.util.*;

import javax.servlet.http.*;

import dto.*;

public class BoardDAO {

	String listSQL = "SELECT BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT FROM MVC_BOARD";
	String contentSQL = "SELECT BID, BNAME, BTITLE, BCONTENT, BDATE, BHIT FROM MVC_BOARD WHERE BID = ?";
	String getIdxSQL = "SELECT IFNULL(MAX(BID)+1,1) FROM MVC_BOARD";
	String insertSQL = "INSERT INTO MVC_BOARD(BID, BNAME, BTITLE, BCONTENT, BHIT) VALUES(?, ?, ?, ?, 0)";
	String deleteSQL = "DELETE FROM MVC_BOARD WHERE BID=?";
	String upHitSQL = "update mvc_board set bHit = bHit + 1 where bId = ?";

	JDBC db = new JDBC();

	public ArrayList<BoardDTO> selectListBoard() {

		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {

			ps = conn.prepareStatement(listSQL);
			rs = ps.executeQuery();

			while (rs.next()) {

				int bId = rs.getInt("BID");
				String bName = rs.getString("BNAME");
				String bTitle = rs.getString("BTITLE");
				String bContent = rs.getString("BCONTENT");
				Timestamp bDate = rs.getTimestamp("BDATE");
				int bHit = rs.getInt("BHIT");

				BoardDTO dto = new BoardDTO(bId, bName, bTitle, bContent, bDate, bHit);

				list.add(dto);

			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			db.close(conn, ps, rs);

		}

		return list;

	}

	public ArrayList<BoardDTO> contentView(int idx) {
		
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		upHit(idx);

		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {

			ps = conn.prepareStatement(contentSQL);
			ps.setInt(1, idx);
			rs = ps.executeQuery();

			while (rs.next()) {

				int bId = rs.getInt("BID");
				String bName = rs.getString("BNAME");
				String bTitle = rs.getString("BTITLE");
				String bContent = rs.getString("BCONTENT");
				Timestamp bDate = rs.getTimestamp("BDATE");
				int bHit = rs.getInt("bHit");

				BoardDTO dto = new BoardDTO(bId, bName, bTitle, bContent, bDate, bHit);
				list.add(dto);
			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			db.close(conn, ps, rs);

		}

		return list;

	}

	public int insert(String title, String content) {
		
		int insertCnt = 0;
		
		
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			
			ps = conn.prepareStatement(getIdxSQL);
			rs = ps.executeQuery();
			rs.next();
			int maxIdx = rs.getInt(1);

			ps = conn.prepareStatement(insertSQL);
			ps.setInt(1, maxIdx);
			ps.setString(2, "김건");
			ps.setString(3, title);
			ps.setString(4, content);

			insertCnt = ps.executeUpdate();
			
			if(insertCnt > 0) {
				
				System.out.println("insert 성공");
				conn.commit();
				
			}else {
				
				System.out.println("insert 실패");
				conn.rollback();
				
			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			db.close(conn, ps, rs);

		}
		return insertCnt;

	}

	private void upHit(int bId) {

		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(upHitSQL);
			ps.setInt(1, bId);

			int hitCnt = ps.executeUpdate();
			
			if(hitCnt > 0) {
				
				System.out.println("조회수 증가 성공");
				conn.commit();
				
			}else {
				
				System.out.println("조회수 증가 실패");
				conn.rollback();
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			db.close(conn, ps);

		}
	}

	public int delete(String idx) {

		int deleteCnt = 0;

		Connection conn = db.getConnection();
		PreparedStatement ps = null;

		try {

			ps = conn.prepareStatement(deleteSQL);
			ps.setString(1, idx);

			deleteCnt = ps.executeUpdate();
			
			if(deleteCnt > 0) {
				
				System.out.println("삭제 성공");
				conn.commit();
				
			}else {
				
				System.out.println("삭제 실패");
				conn.rollback();
				
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			db.close(conn, ps);

		}

		return deleteCnt;
	}
}
