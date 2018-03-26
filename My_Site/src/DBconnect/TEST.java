package DBconnect;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TEST
 */
@WebServlet("/TEST")
public class TEST extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TEST() {
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
		DBconnect db = new DBconnect();

		Connection conn = db.DBconnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String sql = "";
		StringBuffer sb = new StringBuffer();
		sb.append("INSERT INTO test_table");
		sb.append("(BID, BNAME)");
		sb.append("VALUES");
		sb.append("(2, '정기홍')");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			ps = conn.prepareStatement(sb.toString());
			int insertCnt = ps.executeUpdate();
			
			PrintWriter out = response.getWriter();
			
			if(insertCnt > 0) {
				
				out.println("인설트 성공하였습니다.");
				
			}else {
				
				out.println("인설트 실패하였습니다.");
				
			}
		} catch (SQLException e) {

			e.printStackTrace();

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest, HttpServletResponse
	 *      HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
