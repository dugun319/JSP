package service;

import java.io.IOException;
import java.rmi.ServerException;

import dao.BoardDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class WriteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		
		System.out.println("WriteAction service is started succesfully");
		
		BoardDao bd		= BoardDao.getInstance();
		
		try {
			int num = bd.getMax() + 1;
			System.out.println("num -> " + num);
			
			request.setAttribute("num", num);
		} catch (Exception e) {
			// TODO: handle exception
		}	
				
		return "writeTest.jsp";
	}

}
