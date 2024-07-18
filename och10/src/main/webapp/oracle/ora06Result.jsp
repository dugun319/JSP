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
	
	th, tr, td{
		border: 1px solid;
		width: 100px;
		padding: 10px;
		text-align: center;
	}
</style>
</head>
	<body> 
		<h1>MVC View</h1>
			<table>
				<tr>
					<th>사번</th>
					<th>이름</th>
					<th>업무</th>
					<th>메니저</th>
					<th>입사일</th>
					<th>급여</th>
					<th>상여금</th>
					<th>부서번호</th>				
				</tr>
				
				<c:forEach var="emp" items="${al }">
					<tr>
						<td>${emp.empno 	}</td>
						<td>${emp.ename 	}</td>
						<td>${emp.job 		}</td>
						<td>${emp.mgr 		}</td>
						<td>${emp.hiredate	}</td>
						<td>${emp.sal 	 	}</td>
						<td>${emp.comm 	 	}</td>
						<td>${emp.deptno 	}</td>					
					</tr>				
				</c:forEach>
								
			</table>
	
	</body>
</html>