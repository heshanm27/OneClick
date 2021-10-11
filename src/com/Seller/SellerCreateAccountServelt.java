package com.Seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Page.UserDbUtill;

/**
 * Servlet implementation class SellerCreateAccountServelt
 */
@WebServlet("/SellerSignUp")
public class SellerCreateAccountServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerCreateAccountServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String address = request.getParameter("Address");
		String Country = request.getParameter("Country");
		String pass = request.getParameter("Pass");
		
		boolean isTrue = false;
		
		String nsame= "used";
		String done = "done";
		isTrue = SellerDbUtill.SellerCreateAccount(name, email,address,Country,pass);
		
	
		if(isTrue == true) {
			request.setAttribute("done", done);
			RequestDispatcher dis = request.getRequestDispatcher("SellerLoginCreate.jsp");
			dis.forward(request, response);
			
		}else {
			request.setAttribute("isTrue",nsame );
			RequestDispatcher dis2 = request.getRequestDispatcher("SellerLoginCreate.jsp");
			dis2.forward(request, response);
			System.out.println(isTrue);
		}
	}

}
