package och14;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter("/sub2/*")
public class LoginCheck extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public LoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		//chain.doFilter(request, response);
		
		System.out.println("LoginCheck doFilter_LINE 42");
		
		HttpServletRequest 	httpServletRequest	= (HttpServletRequest) request;
		HttpServletResponse httpServletResponse	= (HttpServletResponse) response;
		
		HttpSession session	= httpServletRequest.getSession();
		
		
		System.out.println("LoginCheck doFilter_LINE 50");
		
		if(session == null || session.equals("")) {
			httpServletResponse.sendRedirect("../login.jsp");
			System.out.println("LoginCheck doFilter_LINE 54");
		}
		
		String id = (String)session.getAttribute("id");
		if(id == null || id.equals("")) {
			httpServletResponse.sendRedirect("../login.jsp");
			System.out.println("LoginCheck doFilter_LINE 59");
		}
		
		chain.doFilter(request,response);
		System.out.println("LoginCheck doFilter is ended");
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
