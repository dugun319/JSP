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
			String hiredate = request.getParameter("hiredate");
		%>
		<h5>Hiredate with Ex : <%=hiredate %></h5>
		<h5>Hiredate with EL : ${param.hiredate}</h5>
	</body>
</html>