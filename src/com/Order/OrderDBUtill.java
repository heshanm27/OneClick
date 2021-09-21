package com.Order;


import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.Page.*;


import items.*;
public class OrderDBUtill {

	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	public static String sql;
	
	public  static Order BuyNow(String ID,String Cat) {
		
		Order order = null;
		
	
		try {
			
			
			con = DBConnection.getConnetion();
			
			stmt = con.createStatement();
			if(Cat.equals("electronics") == true) {
			sql="SELECT * FROM electronics WHERE EID= '"+ID+"'";
			}
			else if(Cat.equals("clothes") == true) {
				sql="SELECT * FROM clothes WHERE EID= '"+ID+"'";
			}
			else if(Cat.equals("sports") == true) {
				sql="SELECT * FROM sports WHERE EID= '"+ID+"'";
			}
			else {
				sql="SELECT * FROM Toys WHERE EID= '"+ID+"'";
				
			}
			
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int i;
				int id =rs.getInt(1);
				String Name = rs.getString(2);
				String Title =rs.getString(3);
				String Details = rs.getString(4);
				double price =rs.getDouble(5);
				Blob[] image = {rs.getBlob(6),rs.getBlob(7),rs.getBlob(8)};
				int uid = rs.getInt(9);
				String[] base64Image = new String[3];
				
				
				for(i=0;i<3;i++) {
				
				 InputStream inputStream = image[i].getBinaryStream();
	             ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	             byte[] buffer = new byte[4096];
	              int bytesRead = -1;
	                 
	                try {
						while ((bytesRead = inputStream.read(buffer)) != -1) {
						    outputStream.write(buffer, 0, bytesRead);                  
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	                 
	                byte[] imageBytes = outputStream.toByteArray();
	                 base64Image[i] = Base64.getEncoder().encodeToString(imageBytes);
				
	                try {
						inputStream.close();
						 outputStream.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	            
				}//for
						order =new Order();
	                
						order.setItemID(id);
						order.setItemName(Name);
						order.setItemDetails(Details);
						order.setTitle(Title);
						order.setPrice(price);
						order.setCID(uid);
						order.setImage1(base64Image[0]);
						order.setImage2(base64Image[1]);
						order.setImage3(base64Image[2]);
			                
						
						
						
	       
	 
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return order;
	}
	
	
	
public  static List<search> Search(String like,String Cat) {
		
	ArrayList<search> se = new ArrayList<>();
	
		try {
			
			
			con = DBConnection.getConnetion();
			
			stmt = con.createStatement();
			if(Cat.equals("electronics") == true) {
			sql="SELECT * FROM electronics WHERE Name Like '%"+like+"%'";
			}
			else if(Cat.equals("clothes") == true) {
				sql="SELECT * FROM clothes WHERE ItemName Like '%"+like+"%'";
			}
			else if(Cat.equals("sports") == true) {
				sql="SELECT * FROM sports WHERE ItemName Like '%"+like+"%'";
			}
			else {
				
				sql="SELECT * FROM Toys WHERE Name Like '%"+like+"%'";
			}
			
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int i;
				int id =rs.getInt(1);
				String Name = rs.getString(2);
				String Title =rs.getString(3);
				String Details = rs.getString(4);
				double price =rs.getDouble(5);
				Blob[] image = {rs.getBlob(6),rs.getBlob(7),rs.getBlob(8)};
				int uid = rs.getInt(9);
				String[] base64Image = new String[3];
				
				
				for(i=0;i<3;i++) {
				
				 InputStream inputStream = image[i].getBinaryStream();
	             ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	             byte[] buffer = new byte[4096];
	              int bytesRead = -1;
	                 
	                try {
						while ((bytesRead = inputStream.read(buffer)) != -1) {
						    outputStream.write(buffer, 0, bytesRead);                  
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	                 
	                byte[] imageBytes = outputStream.toByteArray();
	                 base64Image[i] = Base64.getEncoder().encodeToString(imageBytes);
				
	                try {
						inputStream.close();
						 outputStream.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	            
				}//for
						search sec =new search();
	                
						sec.setItemID(id);
						sec.setItemName(Name);
						sec.setItemDetails(Details);
						sec.setTitle(Title);
						sec.setPrice(price);
						sec.setCID(uid);
						sec.setImage1(base64Image[0]);
						sec.setImage2(base64Image[1]);
						sec.setImage3(base64Image[2]);
			                
						
						
						se.add(sec);
	       
	 
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return se;
	}
	
}
