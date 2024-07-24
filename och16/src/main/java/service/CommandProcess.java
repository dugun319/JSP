package service;

import java.io.IOException;
import java.rmi.ServerException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
							 throws ServerException, IOException;
}
