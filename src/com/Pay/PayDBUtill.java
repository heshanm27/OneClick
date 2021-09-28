package com.Pay;
import com.Page.*;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Page.DBConnection;

public class PayDBUtill {
	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	public  static boolean   insertItem(String fname,String lname,String email,String address,String Country,String State,int ZipCode,int itemID,String CatagoryName,int CID,String UserType,String PaymentType,double TotalPrice,int CardNo,int qty) {
		
		boolean isSuccess = false;
		con =DBConnection.getConnetion();
	      PreparedStatement prStatement;
	System.out.println("loldb");
		try {
		
		
			String sql1 = "insert into pay "+"(first_name,last_name,Email,Address,Country,State,ZipCode,ItemID,CatagoryName,CID,UserType,PaymentType,TotalPrice,CardNo,Quantity)"+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			prStatement = con.prepareStatement(sql1);

			prStatement.setString(1,fname);
			prStatement.setString(2,lname);
			prStatement.setString(3,email);
			prStatement.setString(4,address);
			prStatement.setString(5,Country);
			prStatement.setString(6,State);
			prStatement.setInt(7,ZipCode);
			prStatement.setInt(8,itemID);
			prStatement.setString(9,CatagoryName);
			prStatement.setInt(10,CID);
			prStatement.setString(11,UserType);
			prStatement.setString(12,PaymentType);
			prStatement.setDouble(13,TotalPrice);
			prStatement.setInt(14,CardNo);
			prStatement.setInt(15,qty);
			
            
			System.out.println(prStatement);
			
			int rs1 =prStatement.executeUpdate();
			
				if(rs1 > 0) {
				
				isSuccess=true;
				}
			
			}
			
			catch (SQLException e) {
				
				System.out.println(e.getMessage());
			}
			
			
		
	
		
		return isSuccess;
	}
}
