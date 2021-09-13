package com.Page;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userLogin
 */
@WebServlet("/userLogin")
public class userLoginServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLoginServelt() {
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


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("loginEmail");
		String pass = request.getParameter("LoginName");
		
		
		 Boolean result =UserDbUtill.validate(email, pass);
		
		
		if(result == true) {
			
			HttpSession  session = request.getSession();
			session.setAttribute("email", email);
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
		else {
			
			String done = "OK";
			request.setAttribute("loginFaild",done );
			RequestDispatcher dis2 = request.getRequestDispatcher("LoginCreate.jsp");
			dis2.forward(request, response);
		
		}
		
	}

}
