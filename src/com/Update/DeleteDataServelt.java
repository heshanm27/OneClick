package com.Update;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Order.OrderDBUtill;
import com.Order.search;
import com.Seller.Seller;

/**
 * Servlet implementation class electronicsUpdate
 */
@WebServlet("/electronicsUpdate")
public class DeleteDataServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDataServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		 String Cat = request.getParameter("Cat");
		
		 Seller root1 = (Seller) request.getSession().getAttribute("root1");
		   int sid =root1.getSellerID();
		   
		List<GetDetailsClass> Items = GetDataDBUtill.getData(Cat,sid);
		
		System.out.println(Items);
		request.setAttribute("Details", Items);
		
		RequestDispatcher dis = request.getRequestDispatcher("Sport.jsp");

		dis.forward(request, response);
		
		
	}

	
}
