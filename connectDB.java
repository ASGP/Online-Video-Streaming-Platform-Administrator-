package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectDB {
	
	private static String url = "jdbc:mysql://localhost:3306/video";
	private static String user = "root";
	private static String pass="root";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection(url,user,pass);	
			
		}catch(Exception e) {
			System.out.println("Database connectio is lost");
		}
		return con;
	}
	
}
