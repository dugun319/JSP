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
		int 	empno1 = Integer.parseInt(request.getParameter("empno1"));
		String 	ename2 = request.getParameter("ename2");
		%>
	
		<jsp:useBean id="emp" class="och08.Emp" scope="request"></jsp:useBean>
		<jsp:setProperty property="empno" 		name="emp"	value="<%=empno1 %>"/>
		<jsp:setProperty property="ename" 		name="emp"	value="<%=ename2 %>"/>
		<jsp:setProperty property="job" 		name="emp"/>
		<jsp:setProperty property="sal" 		name="emp"/>
		<jsp:setProperty property="hiredate" 	name="emp"/>
		<jsp:forward page="empResult.jsp"></jsp:forward>
	</body>
</html>
