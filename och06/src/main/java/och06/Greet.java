package och06;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
/*import jakarta.servlet.annotation.WebServlet;*/
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

/**
 * Servlet implementation class Greet
 */
public class Greet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    PrintWriter log;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Greet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 *  START
	 */
	public void init(ServletConfig config) throws ServletException {
		try {
			System.out.println("Today is my birthday!!!");
			log = new PrintWriter(new FileWriter("c:/log/log.txt", true));
		} catch (IOException e) {
			System.out.println("init ERROR!!!");
		}
	}

	/**
	 * 	END
	 */
	public void destroy() {
		System.out.println("Today is my funeral");
		if(log != null) {
			log.close();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		GregorianCalendar gc = new GregorianCalendar();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		
		String name	= request.getParameter("name");
		String msg	= name + " 님 반갑소 \r\n";
		String date = String.format("%TF %TT\r\n", gc, gc);
		System.out.println(name + " 님의 사회활동입니다");
		
		log.print(date + msg);
		out.println("<html><body><h2>Say Hello</h2>" + msg);
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
