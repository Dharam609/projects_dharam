package comp3095.assignment1;
/*
//*********************************************************************************
* Project: < Secure Payment Processing System >
* Assignment: < assignment 1 >
* Author(s): < Chaudhay, Ayusha; Kaur, Harampreet; KC, Dharam; Panna, Sahara; and Shireen, Fatima>
* Student Number: < 100968449, 101140952, 101044421, 101145593 and 101159461>
* Date:
* Description: <This java file connects the web server to database server.
* 				The method getConnection returns the status of the connection.>
//*********************************************************************************/

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private Connection connection = null;
	
	
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		try {
			Class.forName("com.mysql.jdbc.Driver");			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/COMP3095", "root", "admin");
			return connection;
		}
		catch(SQLException e) 
		{
			e.printStackTrace();
			return null;
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	 
}	