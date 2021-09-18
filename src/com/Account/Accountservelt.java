package com.Account;

import java.io.IOException;
import java.util.List;

import com.Page.*;

import items.Electronics;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Accountservelt
 */
@WebServlet("/Update")
public class Accountservelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accountservelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		User use = (User)request.getSession().getAttribute("root");
		
		List<Electronics> elect  =AccountDbUtill.finditems(use.getUserID());
		System.out.println(use.getUserID());
		
		
		request.setAttribute("item",elect );
		RequestDispatcher dis2 = request.getRequestDispatcher("delete.jsp");
		dis2.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
