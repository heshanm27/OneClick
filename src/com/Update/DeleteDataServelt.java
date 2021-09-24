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

import items.ClothsDButil;
import items.SportDBUtill;
import items.ToysDBUtill;
import items.itemsDButill;

/**
 * Servlet implementation class electronicsUpdate
 */
@WebServlet("/Delete")
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
		 String ItemId = request.getParameter("ID");
		
		   
		   boolean isSucess=false;
		  
		   
		   if(Cat.equals("electronics") == true) {
			   isSucess = itemsDButill.DeleteItem(ItemId);
		   }else if(Cat.equals("clothes") == true) {
			   
			   isSucess = ClothsDButil.DeleteItem(ItemId);
		   }else if(Cat.equals("sports") == true) {
			   isSucess = SportDBUtill.DeleteItem(ItemId);
		   }
		   else if(Cat.equals("Toy") == true){
			   isSucess = ToysDBUtill.DeleteItem(ItemId);
		   }
		   
		   
		if(isSucess == true) {
			String  msg="isDone";
		request.setAttribute("done", msg);
		RequestDispatcher dis = request.getRequestDispatcher("ShowData.jsp?Cat="+Cat);
		dis.forward(request, response);
		
		}
		
		   
	}

	
}
