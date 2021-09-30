package com.Page;

import java.sql.*;


import java.util.ArrayList;
import java.util.List;

public class UserDbUtill {
	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	
	
	
	public static User Loginvalidate(String email,String Password){
		
		User user = null;
		
		
		
		
		try {
			con = DBConnection.getConnetion();
			stmt = con.createStatement();
			
			
			String sql="select * from user where Email='"+email+"' and Password = '"+Password+"'";
			
			rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				user  = new User();
				user.setUserID(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return user;
	}
	
	
	
	
	
	
	
	

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





	public  static boolean   Update(int id,String name,String Email,String Password) {
	
		boolean isSuccess = false;
		con =DBConnection.getConnetion();
	      PreparedStatement prStatement;
	
		try {
		
		
			String sql1 = " UPDATE user  SET Name = ?, Email = ?,Password = ? WHERE User_Id=?";
			prStatement = con.prepareStatement(sql1);

			prStatement.setString(1,name);
			prStatement.setString(2,Email);
			prStatement.setString(3,Password);
			prStatement.setInt(4,id);
		
			
            
			System.out.println(prStatement);
			
			int rs1 =prStatement.executeUpdate();
			
				if(rs1 > 0) {
				
				isSuccess=true;
				}
				con.close();
			
			}
			
			catch (SQLException e) {
				
				System.out.println(e.getMessage());
			}
			
			
		
		
		
		return isSuccess;
	}
		






	
	
	
	
	
}
