package com.Pay;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.Page.User;
import com.Seller.Seller;

import items.itemsDButill;

/**
 * Servlet implementation class PayServelt
 */
@WebServlet("/Pay")
public class PayServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayServelt() {
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
		
		
		 Seller root1 = (Seller) request.getSession().getAttribute("root1");
		 User root = (User) request.getSession().getAttribute("root");
	
		 
		   String fname = request.getParameter("fname");
		   String lname = request.getParameter("lname");
		  String Email = request.getParameter("email");
		  String address =request.getParameter("address");
		  String country = request.getParameter("country");
		  String State = request.getParameter("State");
		  String z = request.getParameter("zip");
		  int zip = Integer.parseInt(z);
		  String method = request.getParameter("ptype");
		  String cardn = request.getParameter("cardNo");
		  int cardno = Integer.parseInt(cardn);
		  String q =request.getParameter("qty");
		  int qty = Integer.parseInt(q);
		  String iID =request.getParameter("itemID");
		  int itemID = Integer.parseInt(iID);
		  String cat =request.getParameter("cat");
		  String Pri = request.getParameter("tot");
		  double  Price = Double.parseDouble(Pri);
		  boolean isSucess=false;
		 if(root1 != null) {
			 int sid =root1.getSellerID();
			 String utype="seller";
			isSucess = PayDBUtill.insertItem(fname,lname, Email,address, country, State, zip,itemID,cat,sid,utype,method,Price,cardno,qty);
			
		 }else {
			 int uid =  root.getUserID();
			 String utype="user";
		 isSucess = PayDBUtill.insertItem(fname,lname, Email,address, country, State, zip,itemID,cat,uid,utype,method,Price,cardno,qty);
		 }
	
			String goType= "Electronics";  
		
			  System.out.println(isSucess);  
			  
			   if(isSucess == true) {
			   
					if(cat.equals("electronics") == true) {
						System.out.println("elec");
						
						request.setAttribute("Details", goType);
					RequestDispatcher dis = request.getRequestDispatcher("thx.jsp");
					dis.forward(request, response);
					}else if(cat.equals("sports") == true) {
						System.out.println("spo");
						goType= "Sport";
						request.setAttribute("Details", goType);
						RequestDispatcher dis = request.getRequestDispatcher("thx.jsp");
						dis.forward(request, response);
					}else if(cat.equals("clothes") == true) {
						System.out.println("Clothes");
						goType= "Clothes";
						request.setAttribute("Details", goType);
						RequestDispatcher dis = request.getRequestDispatcher("thx.jsp");
						dis.forward(request, response);
					}else {
						System.out.println("Toys");
						goType= "Toys";
						request.setAttribute("Details", goType);
						RequestDispatcher dis = request.getRequestDispatcher("thx.jsp");
						dis.forward(request, response);
					}
					
				
			
			
		}
		
	}

}
