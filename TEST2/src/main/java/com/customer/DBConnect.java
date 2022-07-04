package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	// create database connection
	private static String url = "jdbc:mysql://localhost:3306/stock";
	private static String user = "root" ;
	private static String pswd = "abc12345@" ;
	private static Connection con;
	
	//create get connection method
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");// create a new instance of the com. mysql. jdbc. Driver class
			con = DriverManager.getConnection(url, user, pswd);
		}
		catch(Exception e){
			System.out.println("Database connection is not success!");
		}
		return con;
	}
	
	
}
