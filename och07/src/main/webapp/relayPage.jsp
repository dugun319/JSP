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
	request.setAttribute("name", 	request.getParameter("name"));
	request.setAttribute("address", request.getParameter("address"));
	request.setAttribute("age", 	request.getParameter("age"));
	request.setAttribute("school", 	request.getParameter("school"));
	request.setAttribute("hobby", 	request.getParameterValues("hobby"));
	request.setAttribute("salary", 	request.getParameter("salary"));
	
	RequestDispatcher rd = request.getRequestDispatcher("reviewResult.jsp");
	rd.forward(request, response);
	%>
		
</body>
</html>