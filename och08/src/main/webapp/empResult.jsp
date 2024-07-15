<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<jsp:useBean id="emp" class="och08.Emp" scope="request"></jsp:useBean>
		<h2>Information of Emplyee</h2>
			<h5>사번 : <jsp:getProperty property="empno" 		name="emp"/></h5>
			<h5>이름 : <jsp:getProperty property="ename" 		name="emp"/></h5>
			<h5>업무 : <jsp:getProperty property="job" 		name="emp"/></h5>
			<h5>급여 : <jsp:getProperty property="sal" 		name="emp"/></h5>
			<h5>입사 : <jsp:getProperty property="hiredate" 	name="emp"/></h5>
	</body>
</html>