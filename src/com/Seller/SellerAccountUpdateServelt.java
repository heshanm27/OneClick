package com.Seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Page.User;
import com.Page.UserDbUtill;

/**
 * Servlet implementation class SellerAccountUpdateServelt
 */
@WebServlet("/SellerUpdate")
public class SellerAccountUpdateServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerAccountUpdateServelt() {
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
		   int sid =root1.getSellerID();
		   String name  =request.getParameter("name");
		   String Email  =request.getParameter("email");
		   String address  =request.getParameter("email");
		   String country  =request.getParameter("email");
		   String Pass =request.getParameter("newpass");
		
		   boolean isSucess = SellerDbUtill.Update(sid, name, Email, Pass, address, country);
			 
		   if(isSucess == true) {
			   	String  msg="done";
				request.setAttribute("Ok", msg);
				RequestDispatcher dis = request.getRequestDispatcher("SellerAccount.jsp");
				dis.forward(request, response);
				
	
			 }else {
				 	String  error="wrong";
					request.setAttribute("err", error);
				 RequestDispatcher dis = request.getRequestDispatcher("SellerAccount.jsp");
					dis.forward(request, response);
			 }
		
	}

}
