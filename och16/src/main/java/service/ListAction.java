package service;

import java.io.IOException;
import java.rmi.ServerException;
import java.sql.SQLException;
import java.util.List;

import dao.Board;
import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ListAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("ListAction service is started succesfully");
		
		BoardDao bd		= BoardDao.getInstance();
		
		int totCnt = 0;
		
		try {
			
			totCnt 	= bd.getTotalCnt();
			
			String pageNum 	= request.getParameter("pageNum");
			if(pageNum == null || pageNum.equals("")) {
				pageNum = "1";
			}
			
			int currentPage	= Integer.parseInt(pageNum);
			int pageSize	= 10;
			int blockSize	= 10;
			int startRow	= ((currentPage - 1) * pageSize) + 1;
			int endRow		= startRow + pageSize - 1;
			int startNum	= totCnt - startRow + 1;
			
			List<Board> list	= bd.boardList(startRow, endRow);
			 
			int pageCnt		= (int)Math.ceil((double)totCnt/pageSize);
			int startPage	= (int)(currentPage - 1) / blockSize * blockSize + 1;
			int endPage		= startPage + blockSize - 1;
			
			if(endPage > pageCnt) {
				endPage 	= pageCnt;
			}
			
			request.setAttribute("list", list);
			request.setAttribute("totCnt", totCnt);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("pageSize", pageSize);
			request.setAttribute("blockSize", blockSize);
			request.setAttribute("startRow", startRow);
			request.setAttribute("endRow", endRow);
			request.setAttribute("startNum", startNum);
			request.setAttribute("pageCnt", pageCnt);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//DAO Logic insert
		
		
		//return "listForm.jsp";
		return "list.jsp";
	}

}
