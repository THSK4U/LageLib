package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectionJDBC {
	private static Connection connection;
	static {
		try {
            Class.forName("org.postgresql.Driver");
			 connection=DriverManager.getConnection
<<<<<<< HEAD
					 ("jdbc:mysql://localhost:3306/gestion de bibliothèque","root","123.Niko");
=======
					 ("jdbc:postgresql://localhost:5432/DB_Library","postgres","264850");
>>>>>>> 4a085b08281f81d461d0d51616864158f4cc6e9f

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	public static Connection getConnection() {
		return connection;
	}
}
