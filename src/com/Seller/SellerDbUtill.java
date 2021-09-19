package com.Seller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Page.DBConnection;
import com.Page.User;

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


	
	
	
}
