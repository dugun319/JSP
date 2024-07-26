package service;

import java.io.IOException;
import java.rmi.ServerException;
import java.sql.SQLException;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		
		System.out.println("DeleteAction service is started succesfully");
		
		String num		= request.getParameter("num");
		String pageNum	= request.getParameter("pageNum");
				
		try {
			
			BoardDao bd = BoardDao.getInstance();
			Board board = new Board();
			
			board		= bd.select(num);
			
			request.setAttribute("num", num);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("board", board);
			
		} catch (SQLException e) {
			System.out.println("deleteFormTest e.getMessage() ->" + e.getMessage());
		}
		
		return "deleteFormTest.jsp";
	}

}
