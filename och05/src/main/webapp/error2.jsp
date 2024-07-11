<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%  response.setStatus(200); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>공지사항</h1>
		<h5>보다 나은 서비스를 위해 준비중입니다</h5>
		<h5>MESSAGE : <%=exception.getMessage() %></h5>
		<h5>MESSAGE : <%=exception.getClass() %></h5>
	</body>
</html>