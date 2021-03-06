package com.Account;
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
public class AccountDbUtill {

	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	public  static List<Electronics> finditems(int cid) {
		
		ArrayList<Electronics> item = new ArrayList<Electronics>();
		
	
		try {
			
			
			con = DBConnection.getConnetion();
			
			stmt = con.createStatement();
			
			String sql="select * from electronics where UID='"+cid+"'";
			
			rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int i;
				int id =rs.getInt(1);
				String Name = rs.getString(2);
				String Details = rs.getString(3);
				double price =rs.getDouble(4);
				int uid = rs.getInt(8);
				Blob[] image = {rs.getBlob(5),rs.getBlob(6),rs.getBlob(7)};
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
	            
	                
	                Electronics el = new Electronics();
	                
	                el.setItemID(id);
	                el.setItemName(Name);
	                el.setItemDetails(Details);
	                el.setPrice(price);
	                el.setCID(uid);
	                el.setImage1(base64Image[0]);
	                el.setImage2(base64Image[1]);
	                el.setImage3(base64Image[2]);
	                
	                item.add(el);
	       
	                
	                
				}//for
				
				
				
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return item;
	}
	
	
	
	
}
