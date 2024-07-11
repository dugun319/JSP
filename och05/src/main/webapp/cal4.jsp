<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>RESULT of CAL4</h1>
		
		<%

		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		out.println("<h5>" + num1 + " + " + num2 + " = " + (num1 + num2) + "</h5>");
		out.println("<h5>" + num1 + " - " + num2 + " = " + (num1 - num2) + "</h5>");
		out.println("<h5>" + num1 + " X " + num2 + " = " + (num1 * num2) + "</h5>");
		out.println("<h5>" + num1 + " / " + num2 + " = " + (num1 / num2) + "</h5>");
		
		%>
	</body>
</html>