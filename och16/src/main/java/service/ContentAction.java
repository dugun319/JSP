package service;

import java.io.IOException;
import java.rmi.ServerException;
import java.sql.SQLException;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ContentAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		
		System.out.println("ContentAction service is started succesfully");
		
		String num 		= request.getParameter("num");
		String pageNum 	= request.getParameter("pageNum");
		
		Board board;
		try {
			
			BoardDao bd 	= BoardDao.getInstance();
			bd.readCount(num);
			board = bd.select(num);			
			
			request.setAttribute("num", num);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("board", board);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
				
		return "content.jsp";
	}

}
