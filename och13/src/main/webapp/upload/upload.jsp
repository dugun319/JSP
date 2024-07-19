<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
			int maxSize		= 5 * 1024 * 1024;
			//filesize 5MB 이하로 제한
			String fileSave	= "/fileSave";	
			
			String realPath	= getServletContext().getRealPath(fileSave);
			System.out.println("realPath -> " + realPath);
			
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			
			/*MultipartRequest mr = new MultipartRequest(request, realPath, maxSize);*/
		%>
	</body>
</html>