package service;

import java.io.IOException;
import java.rmi.ServerException;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteTestPro implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
			
			String num		= request.getParameter("num");
			String password = request.getParameter("passwd");
			String pageNum	= request.getParameter("pageNum");
			
			try {
				
				BoardDao bd = BoardDao.getInstance();						
				int result 	= bd.delete(num, password);
				
				request.setAttribute("result", result);
				request.setAttribute("pageNum", pageNum);
				request.setAttribute("num", num);
				
			} catch (Exception e) {
				System.out.println("deleteTestPro e.getMessage() ->" + e.getMessage());
			}
			
		return "deleteTestPro.jsp";
	}

}
