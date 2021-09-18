package items;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EletronicsSearchServelt
 */
@WebServlet("/Search")
public class EletronicsSearchServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EletronicsSearchServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		 String name = request.getParameter("Search");
		
		System.out.println(name);
		
		
	List<Electronics> ItemDetails=itemsDButill.finditems();
		
		request.setAttribute("Details", ItemDetails);
		request.setAttribute("name",name);
		
		RequestDispatcher dis = request.getRequestDispatcher("Electronic.jsp");

		dis.forward(request, response);
		
		
	}


}
