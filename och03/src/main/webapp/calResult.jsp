<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>RESULT</h1>
		<h5>덧샘 : <%=request.getAttribute("add_R")%></h5>
		<h5>뺄샘 : <%=request.getAttribute("min_R")%></h5>
		<h5>곱샘 : <%=request.getAttribute("mul_R")%></h5>
		<h5>나눗샘 : <%=request.getAttribute("div_R")%></h5>
	</body>
</html>