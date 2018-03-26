package DBconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnect {
	Connection conn = null;
	
	public Connection DBconnection() {
		
		try {
			
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "YES_MAN";
			String pass = "poong0340";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url, user, pass);
			
			System.out.println("DB 立加 己傍");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("DB 立加 角菩");
			e.printStackTrace();
		}catch(SQLException e) {
			System.out.println("DB 立加 角菩");
			e.printStackTrace();
			
		}
		
		return conn;
	}
}