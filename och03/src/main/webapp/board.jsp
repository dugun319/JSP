<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		
		<h1>USER BOARD</h1>
		
		<%
			request.setCharacterEncoding("utf-8");
		
			String title	= request.getParameter("title");
			String writer	= request.getParameter("writer");
			String content	= request.getParameter("content");
			
			String msg = "Title : " + title + "\r\n";
			msg += "Writer : " + writer + "\r\n";
			msg += "Content : " + content + "\r\n";
			
			Date date = new Date();
			long fileName = date.getTime();
			
			String real = application.getRealPath("/WEB-INF/out/" + fileName + ".txt");
			
			System.out.println(real);
			
			FileWriter fw = new FileWriter(real);
			
			fw.write(msg);
			fw.close();
			
			out.println("<p>Title : " + title + "</p>");
			out.println("<p>Writer : " + writer + "</p>");
			out.println("<p>Content : " + content + "</p>");
			
		%>
		<h3>저장성공</h3>
	</body>
</html>