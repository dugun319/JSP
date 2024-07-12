package och06;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
/*import jakarta.servlet.annotation.WebServlet;*/
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

/**
 * Servlet implementation class Fibonacci
 */
public class Fibonacci extends HttpServlet {
	private static final long serialVersionUID = 1L;
    BigInteger [] arr = new BigInteger[100];
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fibonacci() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		arr[0] = new BigInteger("1");
		arr[1] = new BigInteger("1");
		System.out.println("Fibonacci is running");
		for(int i = 2 ; i < arr.length ; i ++) {
			arr[i] = arr[i - 2].add(arr[i - 1]);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int num = Integer.parseInt(request.getParameter("num"));
		if(num >100) {
			num = 100;
		}
		
		out.println("<html><body><h2>Fibonacci Squence</h2>");
		for(int i = 0 ; i < num ; i++) {
			out.println("<h5>" + arr[i] + "</h5>");
		}
		
		out.println("</body></html>");
		out.close();		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
