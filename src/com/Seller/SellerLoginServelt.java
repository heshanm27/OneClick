package com.Seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Page.User;
import com.Page.UserDbUtill;

/**
 * Servlet implementation class SellerServelt
 */
@WebServlet("/SellerLogin")
public class SellerLoginServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerLoginServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String email = request.getParameter("loginEmail");
		String pass = request.getParameter("LoginName");
		
		
		 Seller user =SellerDbUtill.Login(email, pass);
		
		
		if(user != null) {
			
			HttpSession  session = request.getSession();
			session.setAttribute("root1", user);
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
		else {
			
			String done = "OK";
			request.setAttribute("loginFaild",done );
			RequestDispatcher dis2 = request.getRequestDispatcher("SellerLoginCreate.jsp");
			dis2.forward(request, response);
		
		}
		
		
		
	}

}
