<%@page import="och10.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>Information of Employee</h1>
		<h4>사번 : ${emp.empno	 }</h4>
		<h4>이름 : ${emp.ename	 }</h4>
		<h4>급여 : <fmt:formatNumber type="number"   value="${emp.sal		 }" groupingUsed="true" /></h4>
		<h4>입사 : <fmt:formatDate 	type="date" 	value="${emp.hiredate}" pattern="YYYY/MM/dd(E)" /></h4>
	</body>
</html>