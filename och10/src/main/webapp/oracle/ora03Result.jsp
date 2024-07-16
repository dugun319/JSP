<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h2>Information of Department with EXPRESSION</h2>
		<%
			String deptno 	= request.getAttribute("deptno").toString();
			String dname	= request.getAttribute("dname").toString();
			String loc		= request.getAttribute("loc").toString();
		%>		
		<h5>부서코드 : <%=deptno %></h5>
		<h5>부서이름 : <%=dname %></h5>
		<h5>부서위치 : <%=loc %></h5>
		<br><br>
				
		<h2>Information of Department with EL</h2>
		<h5>부서코드 : ${deptno }</h5>
		<h5>부서이름 : ${dname }</h5>
		<h5>부서위치 : ${loc }</h5>
	</body>
</html>