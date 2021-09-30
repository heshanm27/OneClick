package com.Page;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Seller.Seller;

/**
 * Servlet implementation class UserAccountUpdateServelt
 */
@WebServlet("/UserUpdate")
public class UserAccountUpdateServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAccountUpdateServelt() {
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
		
		
		   User root = (User) request.getSession().getAttribute("root");
		   int sid =root.getUserID();
		   String name  =request.getParameter("name");
		   String Email  =request.getParameter("email");
		   String Pass =request.getParameter("newpass");
		   boolean isSucess = UserDbUtill.Update(sid, name, Email, Pass);
		 
		   if(isSucess == true) {
			   	String  msg="done";
				request.setAttribute("Ok", msg);
				RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
				dis.forward(request, response);
				
	
			 }else {
				 	String  error="wrong";
					request.setAttribute("err", error);
				 RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
					dis.forward(request, response);
			 }
		   
		
	}

}
