<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>★약관동의★</h1>
		<h5>---------------------------------------------------------</h5>
		<h5>1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.</h5>
		<h5>2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다.</h5>
		<h5>---------------------------------------------------------</h5>
		
		<%
			String id		= request.getParameter("id");
			String password = request.getParameter("pw");
			String name		= request.getParameter("name");
			
			session.setAttribute("id", id);
			session.setAttribute("password", password);
			session.setAttribute("name", name);
		
		%>
		
		<form action="subscribe.jsp">
			<p><input type="radio" name="agree" value="y"/>동의</p>
			<p><input type="radio" name="agree" value="n"/>부동의</p>
			<p><input type="submit" 	value="Confirm"/></p>		
		</form>	
			

	</body>
</html>