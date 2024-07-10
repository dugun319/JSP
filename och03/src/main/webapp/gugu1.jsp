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
		int num = Integer.parseInt(request.getAttribute("num").toString());
		out.println("<h1>GUGUDAN " + num + " DAN");
		for(int i = 1 ; i <= 9 ; i ++){
			out.println("<h3>" + num + " X " + i + " = " + (num * i) + "</h3>");
		}
		%>
		
	</body>
</html>