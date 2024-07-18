<%@page import="java.net.URLEncoder"%>
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
			Cookie cook2 = new Cookie("name", URLEncoder.encode("중앙정보", "utf-8"));
			response.addCookie(cook2);
		%>
		
		<h5>쿠키저장성공</h5>
		<a href="cookView_02.jsp">쿠키보기</a>
	</body>
</html>