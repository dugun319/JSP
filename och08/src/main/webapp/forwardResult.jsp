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
		String name 	= request.getParameter("name");
		String address 	= request.getParameter("address");
		%>
		
		<h3><%=name %> is lived in <%=address %></h3>
	</body>
</html>