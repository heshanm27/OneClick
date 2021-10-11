package com.Seller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Page.DBConnection;
import com.Page.User;
import com.mysql.jdbc.PreparedStatement;

public class SellerDbUtill {

	
	
	
	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	
	
	
	public static Seller Login(String email,String Password){
		
		Seller seller = null;
		
		
		
		
		try {
			con = DBConnection.getConnetion();
			stmt = con.createStatement();
			
			
			String sql="select * from seller where Email='"+email+"' and Password = '"+Password+"'";
			
			rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				seller  = new Seller();
				seller.setSellerID(rs.getInt(1));
				seller.setName(rs.getString(2));
				seller.setAddress(rs.getString(3));
				seller.setCountry(rs.getString(4));
				seller.setEmail(rs.getString(5));
				seller.setPassword(rs.getString(6));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return seller;
	}
	
	

	public static boolean SellerCreateAccount(String name, String email,String Address,String Country,String Password) {
		
		boolean isSuccess = false;
		boolean checkemail =true;
		
		
		try {
			
			con = DBConnection.getConnetion();
			stmt = con.createStatement();
			
			String sql = "select * from seller where Email='"+email+"'";
			ResultSet rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				checkemail=false;
				
			}
			else {
				
				
				try {
				con =DBConnection.getConnetion();
				stmt = con.createStatement();
				String sql1 = "insert into seller values (0,'"+name+"','"+Address+"','"+Country+"','"+email+"','"+Password+"')";
				
				
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


	public  static boolean   Update(int id,String name,String Email,String Password,String address,String country) {
		
		boolean isSuccess = false;
		con =DBConnection.getConnetion();
	      PreparedStatement prStatement;
	
		try {
		
		
			String sql1 = " UPDATE seller  SET Name = ?,Address = ?,Country = ?, Email = ?,Password = ? WHERE SID=?";
			prStatement = (PreparedStatement) con.prepareStatement(sql1);

			prStatement.setString(1,name);
			prStatement.setString(2,address);
			prStatement.setString(3,country);
			prStatement.setString(4,Email);
			prStatement.setString(5,Password);
			prStatement.setInt(6,id);
		
			
            
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
