package com.Page;

import java.sql.*;


import java.util.ArrayList;
import java.util.List;

public class UserDbUtill {
	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	
	
	

	public static boolean CreateAccount(String name,String email,String Password) {
		
		boolean isSuccess = false;
		boolean checkemail =true;
		
		
		try {
			
			con = DBConnection.getConnetion();
			stmt = con.createStatement();
			
			String sql = "select * from user where Email='"+email+"'";
			ResultSet rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				checkemail=false;
				
			}
			else {
				
				
				try {
				con =DBConnection.getConnetion();
				stmt = con.createStatement();
				String sql1 = "insert into user values (0,'"+name+"','"+email+"','"+Password+"')";
				
				int rs1 = stmt.executeUpdate(sql1);
				
					if(rs1 > 0) {
					
					isSuccess=true;
					}
				
				}
				
				catch (Exception e) {
					
					e.printStackTrace();
				}
				
				return isSuccess;
			}
			
		}
		catch(Exception e) {
			
			System.out.println("Dberror" +e);
		}
		return checkemail;
		
	}
	
	
	
	
	
}
