package dao;

import java.sql.*;

public class JDBC {

	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URL = "jdbc:mysql://localHost:3306/board";
	private final String DB_ID = "scott";
	private final String DB_PW = "tiger";

	private Connection conn = null;

	public Connection getConnection() {

		try {

			Class.forName(JDBC_DRIVER);

			conn = DriverManager.getConnection(DB_URL, DB_ID, DB_PW);
			conn.setAutoCommit( false );
			
			System.out.println("DB 접속 성공");
		} catch (ClassNotFoundException e) {

			e.printStackTrace();

		} catch (SQLException e) {

			e.printStackTrace();

		}

		return conn;

	}

	public void close(Connection conn, PreparedStatement ps, ResultSet rs) {

		try {

			if (conn != null)
				conn.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

		try {

			if (ps != null)
				ps.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

		try {

			if (rs != null)
				rs.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

	public void close(Connection conn, PreparedStatement ps) {

		try {

			if (conn != null)
				conn.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

		try {

			if (ps != null)
				ps.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}
	}
}
