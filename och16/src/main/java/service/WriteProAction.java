package service;

import java.io.IOException;
import java.rmi.ServerException;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class WriteProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		
			
			try {
				Board board = new Board();
				BoardDao bd = BoardDao.getInstance();
				
				int maxNum = bd.getMax() + 1;
				
				board.setNum(Integer.parseInt(request.getParameter("num")));
				board.setWriter(request.getParameter("writer"));
				board.setEmail(request.getParameter("email"));
				board.setSubject(request.getParameter("subject"));
				board.setPasswd(request.getParameter("passwd"));
				board.setContent(request.getParameter("content"));
				
				board.setIp(request.getRemoteAddr());
				board.setRef(Integer.parseInt(request.getParameter("ref")));
				board.setRe_step(Integer.parseInt(request.getParameter("re_step")));
				board.setRe_level(Integer.parseInt(request.getParameter("re_level")));
				
				int result = bd.insert(board, maxNum);
				
				request.setAttribute("num", board.getNum());
				request.setAttribute("pageNum", request.getParameter("pageNum"));
				request.setAttribute("board", board);
				request.setAttribute("result", result);
				
				
			} catch (Exception e) {
				System.out.println("WriteProAction e.getMessage()" + e.getMessage());
			}
		
		return "WritePro.jsp";
	}

}
