package com.Page;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {

	private static String url ="jdbc:mysql://localhost:3306/oneclick";
	private static String userName = "root";
	private static String password = "";
	private static Connection con;
	
	public static Connection getConnetion() {
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,userName,password);
			System.out.println(url+userName);
			
			
		}
		
		catch(Exception e) {
			
			System.out.println("DataBase Dbonnection Connetion Error   "+e);
		}
		
		return con;
	}
}
