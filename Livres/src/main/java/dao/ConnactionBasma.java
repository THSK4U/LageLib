package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnactionBasma {
	private static Connection connection;
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 connection=DriverManager.getConnection
					 ("jdbc:mysql://localhost:3306/produitpharmacy","root","123.Niko");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	public static Connection getConnection() {
		return connection;
	}

}
