<%@page import="java.util.GregorianCalendar"%>
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
			GregorianCalendar gc = new GregorianCalendar();
			String date = String.format("%TF %TT", gc, gc);
		%>
		<h3>Today is <%=date%></h3>
	</body>
</html>