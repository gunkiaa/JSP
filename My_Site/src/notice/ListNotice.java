package notice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;

/**
 * Servlet implementation class ListNotice
 */
@WebServlet("/ListNotice")
public class ListNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListNotice() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");

		DBconnect db = new DBconnect();
		Connection conn = db.DBconnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String sql = "SELECT * FROM BODER";
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
			while (rs.next()) {
				ArrayList<String> dto = new ArrayList<String>();
				dto.add(rs.getString("BODER_ID"));
				dto.add(rs.getString("title"));
				dto.add(rs.getString("USER_NAME"));
				dto.add(rs.getString("WRITE_DATE"));
				list.add(dto);
			}
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/community.jsp");
			rd.forward(request, response);
		} catch (Exception e) {

			e.printStackTrace();

		} finally {
			try {
				if (conn != null)
					conn.close();

				if (ps != null)
					ps.close();

				if (rs != null)
					rs.close();
			} catch (Exception e) {

				e.printStackTrace();

			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
