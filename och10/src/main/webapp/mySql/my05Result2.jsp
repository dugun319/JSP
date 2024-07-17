<%@page import="java.util.ArrayList"%>
<%@page import="och10.Professor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		background-color: aliceblue;
		border: 2px solid;
	}
	
	tr:hover{
		background-color: lightskyblue;
	}
	
	th{
		background-color: powderblue;
	}
	
	th, tr, td{
		border: 1px solid;
		width: 100px;
		padding: 10px;
		text-align: center;
	}
</style>
</head>
	<body>
		<h1>MVC Model 2 View</h1>
			<table>
				<tr>
					<th>교수번호</th>
					<th>이름</th>
					<th>업무</th>
					<th>급여</th>				
				</tr>	
			<c:forEach var="prof" items="${al }">
				<tr>
					<td>${prof.profno	}</td>
					<td>${prof.name 	}</td>
					<td>${prof.position }</td>
					<td>${prof.sal 		}</td>	
				</tr>
			</c:forEach>
				
			</table>
	</body>
</html>