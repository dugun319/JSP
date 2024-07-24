package service;

import java.io.IOException;
import java.rmi.ServerException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ListAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("ListAction service is started succesfully");
		
		//DAO Logic insert
		request.setAttribute("totCnt", 5);
		
		//return "listForm.jsp";
		return "list.jsp";
	}

}
