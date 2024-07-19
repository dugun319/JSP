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
			String id = (String)session.getAttribute("id");
			// toString()의 경우 null이 들어오면 NullPointException 발생
			//(String) 캐스팅 해 주어야 함.
		
			if(id == null || id == ""){
				response.sendRedirect("loginForm.jsp");
			}		
		%>
		<h3>Welcome <%=id %></h3>
		<p><input 	type="button"	
					value="Logout"	
					onclick="location.href='sessionLogout.jsp'" />
		
	</body>
</html>