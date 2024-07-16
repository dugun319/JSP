<%@page import="och10.Dept"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h2>Information of Department with EXPRESSION 01</h2>
		<%
			Dept dept = (Dept)request.getAttribute("dept");
			
			int deptno	 = dept.getDeptno();
			String dname = dept.getDname();
			String loc	 = dept.getLoc();
		
		%>		
		<h5>부서코드 : <%=deptno %></h5>
		<h5>부서이름 : <%=dname %></h5>
		<h5>부서위치 : <%=loc %></h5>
		<br><br>
		
		<h2>Information of Department with EXPRESSION 02</h2>
		<h5>부서코드 : <%=dept.getDeptno() %></h5>
		<h5>부서이름 : <%=dept.getDname() %></h5>
		<h5>부서위치 : <%=dept.getLoc() %></h5>
		<br><br>
		
				
		<h2>Information of Department with EL</h2>
		<h5>부서코드 : ${dept.deptno }</h5>
		<h5>부서이름 : ${dept.dname }</h5>
		<h5>부서위치 : ${dept.loc }</h5>
	</body>
</html>