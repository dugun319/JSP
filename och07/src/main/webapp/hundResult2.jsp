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
		String sum1 = request.getAttribute("sum1").toString();
		%>
		
		<h1>SUM1 : <%=sum1 %></h1>
		<h1>SUM2 : ${sum2}</h1>
		
		
		
	</body>
</html>