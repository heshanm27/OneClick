
package com.index;
import items.*;
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
public class SliderDbutill {

	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	public  static List<Electronics> findElectronic() {
		
		ArrayList<Electronics> item = new ArrayList<Electronics>();
		
	
		try {
			
			
			con = DBConnection.getConnetion();
			
			stmt = con.createStatement();
			
			String sql="select * from electronics LIMIT 3";
			
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
	                Electronics el = new Electronics();
	                
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
	       
	              
	                
			
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return item;
	}
	
	
public  static List<Cloths> FindCloths() {
		
		ArrayList<Cloths> clo = new ArrayList<>();
		
	
		try {
			
			
			con = DBConnection.getConnetion();
			
			stmt = con.createStatement();
			
			String sql="select * from  clothes LIMIT 3";
			
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
						Cloths c1 = new Cloths();
	                
						  	c1.setItemID(id);
						  	c1.setItemName(Name);
						  	c1.setItemDetails(Details);
						  	c1.setTitle(Title);
						  	c1.setPrice(price);
						  	c1.setCID(uid);
						  	c1.setImage1(base64Image[0]);
						  	c1.setImage2(base64Image[1]);
						  	c1.setImage3(base64Image[2]);
			                
						
						clo.add(c1);
						
	       
	 
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return clo;
	}
	
public  static List<Sport> FindSport() {
	
	ArrayList<Sport> spt = new ArrayList<>();
	

	try {
		
		
		con = DBConnection.getConnetion();
		
		stmt = con.createStatement();
		
		String sql="select * from  sports LIMIT 3";
		
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
					Sport Spt1 = new Sport();
                
					Spt1.setItemID(id);
					Spt1.setItemName(Name);
					Spt1.setItemDetails(Details);
					Spt1.setTitle(Title);
					Spt1.setPrice(price);
					Spt1.setCID(uid);
					Spt1.setImage1(base64Image[0]);
					Spt1.setImage2(base64Image[1]);
					Spt1.setImage3(base64Image[2]);
		                
					
					spt.add(Spt1);
					
       
 
			
			
			
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	return spt;
}



public  static List<Toys> FindToy() {

ArrayList<Toys> toys = new ArrayList<>();


try {
	
	
	con = DBConnection.getConnetion();
	
	stmt = con.createStatement();
	
	String sql="select * from  toy LIMIT 3";
	
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
				Toys toy = new Toys();
            
				toy.setItemID(id);
				toy.setItemName(Name);
				toy.setItemDetails(Details);
				toy.setTitle(Title);
				toy.setPrice(price);
				toy.setCID(uid);
				toy.setImage1(base64Image[0]);
				toy.setImage2(base64Image[1]);
				toy.setImage3(base64Image[2]);
	                
				
				toys.add(toy);
				
   

		
		
		
	}
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}



return toys;
}
	
}
