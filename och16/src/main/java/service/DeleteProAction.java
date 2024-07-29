package service;

import java.io.IOException;
import java.rmi.ServerException;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
			
			String num		= request.getParameter("num");
			String password = request.getParameter("password");
			String pageNum	= request.getParameter("pageNum");
			String position = "num";
			
			try {
				
				int result  = 0;
				BoardDao bd = BoardDao.getInstance();
				Board board = bd.select(num);
				
				String ref 	= "" + board.getRef();
				
				if(num.equals(ref)){
					//position = "ref";
					System.out.println("num.equals(ref)");
				}					
								
				result 	= bd.delete(position, num, password);
				
				System.out.println("delete(position, num, password) -> " + result);
				
				request.setAttribute("result", result);
				request.setAttribute("pageNum", pageNum);
				request.setAttribute("num", num);
				
			} catch (Exception e) {
				System.out.println("deletePro e.getMessage() ->" + e.getMessage());
			}
			
		return "deletePro.jsp";
	}

}
