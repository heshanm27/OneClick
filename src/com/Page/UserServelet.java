package com.Page;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/Signup")
public class UserServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String pass = request.getParameter("Pass");
		
		boolean isTrue = false;
		
		String nsame= "used";
		String done = "done";
		isTrue = UserDbUtill.CreateAccount(name, email, pass);
		
	
		if(isTrue == true) {
			
			request.setAttribute("done", done);
			RequestDispatcher dis = request.getRequestDispatcher("UserLoginCreate.jsp");
			dis.forward(request, response);
			
		}else {
			request.setAttribute("isTrue",nsame );
			RequestDispatcher dis2 = request.getRequestDispatcher("UserLoginCreate.jsp");
			dis2.forward(request, response);
			System.out.println(isTrue);
		}
	
	}

}
