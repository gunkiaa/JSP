package dao;

import java.sql.*;

public class UserDAO {

	public int insert(String id, String pw, String name, String eMail, String gender) {
		int insertCnt = 0;
		
		JDBC db = new JDBC();
		
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		
		StringBuffer sb = new StringBuffer();
		sb.append("INSERT INTO MVC_USER");
		sb.append("(UID, UPW, UNAME, UGENDER, UEMAIL)");
		sb.append("VALUES");
		sb.append("(?,   ?,   ?,     ?,       ?)");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, id);
			ps.setString(2, pw);
			ps.setString(3, name);
			ps.setString(4, gender);
			ps.setString(5, eMail);
			
			insertCnt = ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return insertCnt;
	}
}
