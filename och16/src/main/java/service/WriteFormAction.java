package service;

import java.io.IOException;
import java.rmi.ServerException;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class WriteFormAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		System.out.println("WriteFormAction service is started succesfully");
		
		try {
			int num 		= 0;
			int ref 		= 0;
			int re_level 	= 0;
			int re_step 	= 0;
						
			String pageNum 	= request.getParameter("pageNum");
			
			if(pageNum == null) {
				pageNum = "1";
			}
			
			if(request.getParameter("num") != null) {
				
				num	= Integer.parseInt(request.getParameter("num"));
			
				BoardDao bd = BoardDao.getInstance();
				Board board = bd.select(String.valueOf(num));			
				
				ref			= board.getRef();
				re_step		= board.getRe_step();
				re_level	= board.getRe_level();
				
			}
			
			request.setAttribute("num", num);
			request.setAttribute("ref", ref);
			request.setAttribute("re_level", re_level);
			request.setAttribute("re_step", re_step);
			request.setAttribute("pageNum", pageNum);
			
		} catch (Exception e) {
			System.out.println("WriteFormAction e.getMessage()) -> " + e.getMessage());
		}
		
		return "writeForm.jsp";
	}

}
