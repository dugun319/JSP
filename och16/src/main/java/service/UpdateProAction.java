package service;

import java.io.IOException;
import java.rmi.ServerException;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		
			System.out.println("UpdateProAction service is started succesfully");
			
			int num 		= Integer.parseInt(request.getParameter("num"));
			String pageNum	= request.getParameter("pageNum");
			String writer 	= request.getParameter("writer");
			String email 	= request.getParameter("email");
			String subject	= request.getParameter("subject");
			String passwd	= request.getParameter("passwd");
			String content	= request.getParameter("content");
			
			try {
				BoardDao bd = BoardDao.getInstance();
				Board board = new Board();
				
				board.setNum(num);
				board.setWriter(writer);
				board.setEmail(email);
				board.setSubject(subject);
				board.setPasswd(passwd);
				board.setContent(content);
				board.setIp(request.getRemoteAddr());
				
				int result = bd.update(board);
				
				request.setAttribute("result", result);
				request.setAttribute("num", board.getNum());
				request.setAttribute("pageNum", pageNum);
				
			} catch (Exception e) {
				System.out.println("UpdatePro e.getMessage() ->" + e.getMessage());
			}
		
		return "updatePro.jsp";
	}

}
