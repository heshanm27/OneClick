package com.Update;






import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.Page.*;


import items.*;
public class GetDataDBUtill {

	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	public static String sql;
	
	public  static List<GetDetailsClass> getData(String Cat,int ID) {
		
		ArrayList<GetDetailsClass> item = new ArrayList<GetDetailsClass>();
		
		
		
	
		try {
			
			
			con = DBConnection.getConnetion();
			
			stmt = con.createStatement();
			
				if(Cat.equals("electronics") == true) {
				sql="SELECT * FROM electronics WHERE SID= '"+ID+"'";
				}
				else if(Cat.equals("clothes") == true) {
					sql="SELECT * FROM clothes WHERE UID= '"+ID+"'";
				}
				else if(Cat.equals("sports") == true) {
					sql="SELECT * FROM sports WHERE UID= '"+ID+"'";
				}
				else {
					sql="SELECT * FROM toy WHERE SID= '"+ID+"'";
					
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
				GetDetailsClass el = new GetDetailsClass();
	                
	                el.setItemID(id);
	                el.setItemName(Name);
	                el.setItemDetails(Details);
	                el.setTitle(Title);
	                el.setPrice(price);
	                el.setCID(uid);
	                el.setImage1(base64Image[0]);
	                el.setImage2(base64Image[1]);
	                el.setImage3(base64Image[2]);
	                
	                item.add(el);
	       
	                System.out.println(el.getItemName());
	                
			
				
				
				
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return item;
	}
	
	
	
	
	
	
	
	
	
}
