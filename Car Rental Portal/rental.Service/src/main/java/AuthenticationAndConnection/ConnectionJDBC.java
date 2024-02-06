package AuthenticationAndConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

public class ConnectionJDBC {

	public static Connection getDBConnection() {
	Driver driver;
	try {
		driver = new Driver();
		DriverManager.registerDriver(driver);
	
		String url = "jdbc:mysql://localhost:3306/steerdatabase" ;
		String user = "root";
		String pass = "root" ;
	
		return DriverManager.getConnection(url,user,pass);
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

	return null ;
}
}