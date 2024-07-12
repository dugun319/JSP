<%@page import="java.util.HashMap"%>
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
		HashMap<String, String> addrMap = new HashMap<String, String>();
		
		addrMap.put("Park",		"목동");
		addrMap.put("Jessica",	"이대");
		addrMap.put("Richard",	"신정");
		addrMap.put("Smith", 	"당산");
		
		request.setAttribute("Address", addrMap);
		RequestDispatcher dispatcher = request.getRequestDispatcher("mapView.jsp?NAME=Park");
		dispatcher.forward(request, response);
		
		
		%>
	</body>
</html>