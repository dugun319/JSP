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
			request.setCharacterEncoding("utf-8");
		
			String name 	= request.getParameter("name");
			String address 	= request.getParameter("address");
			
			response.setContentType("utf-8");
					
		%>
		
		<h5><%=name%>는(은) <%=address%> 에 삽니다</h5>
	</body>
</html>