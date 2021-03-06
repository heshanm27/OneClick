package com.Order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServelt
 */
@WebServlet("/Search")
public class SearchServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 String Cat = request.getParameter("cat");
		 String like = request.getParameter("Search");
		
		
		List<search> Items = OrderDBUtill.Search(like, Cat);
		System.out.println(Items);
		request.setAttribute("Details", Items);
		
		if(Cat.equals("electronics") == true) {
			
		RequestDispatcher dis = request.getRequestDispatcher("Electronic.jsp");

		dis.forward(request, response);
		}
		else if(Cat.equals("clothes") == true) {
		
			RequestDispatcher dis = request.getRequestDispatcher("Cloths.jsp");

			dis.forward(request, response);
		}else if(Cat.equals("sports") == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Sport.jsp");

			dis.forward(request, response);
		}else  {
			
	
			
			RequestDispatcher dis = request.getRequestDispatcher("Toys.jsp");

			dis.forward(request, response);
		}
		
	}

	

}
