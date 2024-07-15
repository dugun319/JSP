<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<jsp:forward page="forwardResult.jsp"></jsp:forward>
	
		<%-- <%
		request.setAttribute("name", "name");
		request.setAttribute("address", "address");
		
		RequestDispatcher rd = request.getRequestDispatcher("forwardResult.jsp");
		rd.forward(request, response);
		%> --%>
	</body>
</html>