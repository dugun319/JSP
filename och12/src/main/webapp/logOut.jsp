<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ include file="memberCheck.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
			System.out.println("Logout session id -> " + id);
			session.invalidate();
		%>
		
		<script type="text/javascript">
			alert("You, <%=id%> , have Logged out successfully");
			location.href = "loginForm.jsp";
		</script>
	</body>
</html>