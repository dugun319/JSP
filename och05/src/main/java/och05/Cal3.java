package och05;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Cal3
 */
public class Cal3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cal3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				//response.getWriter().append("Served at: ").append(request.getContextPath());
				
				request.setCharacterEncoding("utf-8");
				
				
				response.setContentType("text/html;utf-8");
				PrintWriter out = response.getWriter();
				out.println("<html><body><h2>Result of Calculation</h2>");
				
				try {
					int num1 = Integer.parseInt(request.getParameter("num1")); 
					int num2 = Integer.parseInt(request.getParameter("num2"));
					out.printf("<p>%d + %d = %d</p>", num1, num2, (num1 + num2));
					out.printf("<p>%d - %d = %d</p>", num1, num2, (num1 - num2));
					out.printf("<p>%d * %d = %d</p>", num1, num2, (num1 * num2));
					out.printf("<p>%d / %d = %d</p>", num1, num2, (num1 / num2));			
				} catch (Exception e) {
					RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
					rd.forward(request, response);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
