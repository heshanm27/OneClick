package items;

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

import com.Page.DBConnection;

public class SportDBUtill {

	
	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	public  static List<Sport> getData() {
		
		ArrayList<Sport> spt = new ArrayList<>();
		
	
		try {
			
			
			con = DBConnection.getConnetion();
			
			stmt = con.createStatement();
			
			String sql="select * from  sports";
			
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
	
	
	
	
	
	public  static boolean   DeleteItem(String EID) {
		
		boolean isSuccess = false;
		con =DBConnection.getConnetion();
	      PreparedStatement prStatement;
	
		try {
		
		
			String sql1 = "DELETE FROM  sports where EID=?";
			prStatement = con.prepareStatement(sql1);

			prStatement.setString(1, EID);
		
            
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
		
	
	


	public  static boolean   Update(int id,String name,String title,String Disc,double price,InputStream img1,InputStream img2,InputStream img3) {
	
		boolean isSuccess = false;
		con =DBConnection.getConnetion();
	      PreparedStatement prStatement;
	
		try {
		
		
			String sql1 = " UPDATE sports  SET 	ItemName = ?, Title = ?,Discription = ?,Price=?,Image1=?,Image1=?,Image3=? WHERE EID=?";
			prStatement = con.prepareStatement(sql1);

			prStatement.setString(1,name);
			prStatement.setString(2,title);
			prStatement.setString(3,Disc);
			prStatement.setDouble(4,price);
			
			if (img1 != null) {
			prStatement.setBlob(5,img1);
			System.out.println("dbgetimg1 sucess");
			}
			if(img2 != null) {
			prStatement.setBlob(6,img2);
			System.out.println("dbgetimg2 sucess");
			}
			if(img3 != null) {
			prStatement.setBlob(7,img3);
			System.out.println("dbgetimg3 sucess");
			}
			
			prStatement.setInt(8, id);
            
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
		
	
	

	public  static boolean   insertItem(String name,String title,String Disc,double price,InputStream img1,InputStream img2,InputStream img3,int sid) {
	
		boolean isSuccess = false;
		con =DBConnection.getConnetion();
	      PreparedStatement prStatement;
	
		try {
		
		
			String sql1 = "insert into sports "+"(ItemName,Title,Discription,Price,Image1,Image2,Image3,UID)"+ " values (?,?,?,?,?,?,?,?)";
			prStatement = con.prepareStatement(sql1);

			prStatement.setString(1,name);
			prStatement.setString(2,title);
			prStatement.setString(3,Disc);
			prStatement.setDouble(4,price);
			
			if (img1 != null) {
			prStatement.setBlob(5,img1);
			System.out.println("dbgetimg1 sucess");
			}
			if(img2 != null) {
			prStatement.setBlob(6,img2);
			System.out.println("dbgetimg2 sucess");
			}
			if(img3 != null) {
			prStatement.setBlob(7,img3);
			System.out.println("dbgetimg3 sucess");
			}
			
			prStatement.setInt(8, sid);
            
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
