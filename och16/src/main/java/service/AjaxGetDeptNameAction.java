package service;

import java.io.IOException;
import java.rmi.ServerException;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AjaxGetDeptNameAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		
		System.out.println("AjaxGetDeptNameAction service is started sueccefully");
		
		try {
			String num	= request.getParameter("num");
			
			System.out.println("getParameter(\"num\") ->" + num);
			
			BoardDao bd	= BoardDao.getInstance();
			Board board = bd.select(num);
			request.setAttribute("writer", board.getWriter());
			System.out.println("board.getWriter() ->" + board.getWriter());
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		//ajax의 경우 dummy를 return
		return "ajax";
	}

}
