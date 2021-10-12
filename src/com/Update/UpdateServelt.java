package com.Update;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.Seller.Seller;


import items.*;

/**
 * Servlet implementation class UpdateServelt
 */
@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/Updated")
public class UpdateServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServelt() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	
		   
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		System.out.println("eletronic Update");
		String Cat = request.getParameter("Cat");
		   String ItemName = request.getParameter("Name");
		   String Title = request.getParameter("title");
		  String Description = request.getParameter("description");
		  String Pri = request.getParameter("prixe");
		  String ItemID = request.getParameter("ID");
		  int ID= Integer.parseInt(ItemID);
		  double  Price = Double.parseDouble(Pri);
	
		 System.out.println(Title);
		 System.out.println(ItemName);
		 System.out.println(Description);
		 System.out.println(Pri);

		  InputStream inputStream1 = null;
		   InputStream inputStream2 = null;
		   InputStream inputStream3 = null;
		   
		   Part filepart1 = request.getPart("image1");
		   Part filepart2 = request.getPart("image2");
		   Part filepart3 = request.getPart("image3");
		   
		   if(filepart1 != null) {
			   inputStream1 =filepart1.getInputStream();
			   System.out.println("img1 sucess");
		   }
		   if(filepart1 != null) {
			   inputStream2 =filepart2.getInputStream();
			   System.out.println("img2 sucess");
		   }
		   if(filepart1 != null) {
			   inputStream3 =filepart3.getInputStream();
			   System.out.println("img3 sucess");
		   }
		  
		  
		  
		  
		 
		   
		   System.out.println(Title);
		   System.out.println(inputStream1);
		   
		   boolean isSucess=false;
		   
		   
		   if(Cat.equals("electronics") == true) {
			   
		   isSucess = itemsDButill.Update(ID,ItemName, Title, Description,Price, inputStream1, inputStream2, inputStream3);
		   
		   }else if(Cat.equals("clothes") == true) {
			   
			   isSucess = ClothsDButil.Update(ID,ItemName, Title, Description,Price, inputStream1, inputStream2, inputStream3);
			   
		   }else if(Cat.equals("sports") == true) {
			   
			   isSucess = SportDBUtill.Update(ID,ItemName, Title, Description,Price, inputStream1, inputStream2, inputStream3);
			   
		   }else if(Cat.equals("Toy") == true){
			   
			   isSucess = ToysDBUtill.Update(ID,ItemName, Title, Description,Price, inputStream1, inputStream2, inputStream3);
		   }
		   
		  System.out.println(isSucess);  
		  String msg="isOk";
		  
		   
			 if(isSucess == true) {
				
				request.setAttribute("Ok", msg);
				RequestDispatcher dis = request.getRequestDispatcher("/ShowData.jsp?Cat="+Cat);
				dis.forward(request, response);
				
	
			 }
		
	}

}
