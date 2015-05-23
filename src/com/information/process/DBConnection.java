package com.information.process;
import java.sql.*;

public class DBConnection {
	// establishes the connection to the database
	public Connection connect(){
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/FoundationSystem","root","!Qaz2wsx");
			conn.setAutoCommit(false);
			if (conn == null)
				System.out.println("Connection could not be established");
			return conn;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
}
