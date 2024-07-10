package och02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Personal
 */
public class Personal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personal() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		request.setCharacterEncoding("utf-8");
		
		String name		 = request.getParameter("name");
		String id 		 = request.getParameter("id");
		String password  = request.getParameter("password");		
		String gender 	 = request.getParameter("gender");		
		String [] notice = request.getParameterValues("notice");		
		String job		 = request.getParameter("job");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		out.println("<h1>Personal Information</h1>");
		
		out.print("<p>NAME : " + name + "</p>");
		out.print("<p>ID : " + id + "</p>");
		out.print("<p>PW : " + password + "</p>");
		out.print("<p>GENDER : " + gender + "</p>");
		out.print("<p>NOTICE : ");
		if(notice != null) {
			for(int i = 0 ; i < notice.length ; i++) {
				out.print(notice[i] + " ");
			}
		}else { 
				out.print("없음");
		}
		out.print("</p>");
		out.print("<p>JOB    : " + job + "</p>");
		
		out.println("</body></html>");
		out.close();		
		
	}

}
