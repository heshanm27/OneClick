package com.insert;

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

import items.ClothsDButil;
import items.itemsDButill;

/**
 * Servlet implementation class ClothesInsert
 */
@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/ClothesInsert")
public class ClothesInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClothesInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

	
		
		System.out.println("eletronic inset");
		   String ItemName = request.getParameter("Name");
		   String Title = request.getParameter("title");
		  String Description = request.getParameter("description");
		  String Pri = request.getParameter("prixe");
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
		  
		   
		   Seller root1 = (Seller) request.getSession().getAttribute("root1");
		   int sid =root1.getSellerID();
		   
		 boolean isSucess = ClothsDButil.insertItem(ItemName, Title, Description,Price, inputStream1, inputStream2, inputStream3, sid);
		  System.out.println(isSucess);  
		  
		   if(isSucess == true) {
		   
			   System.out.println("nice");
			   String mesg ="Sucess";
		   request.setAttribute("mesg", mesg);
	
			
				RequestDispatcher dis = request.getRequestDispatcher("insert.jsp");

				dis.forward(request, response);
			
	}

}
}
