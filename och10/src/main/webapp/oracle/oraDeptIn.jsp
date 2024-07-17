<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h1>부서 정보 수정</h1>
		<form action="oraUpdate.jsp" method="get">
		<table>
			<tr>
				<th>DEPT No.</th>
				<td>${deptno	}
				    <input type="hidden" 	name="deptno" 	value="${deptno }"></td>
			</tr>
			
			<tr>
				<th>DEPT Name</th>
				<td><input type="text"		name="dname"	value="${dname 	}"></td>
			</tr>
			
			<tr>
				<th>LOCATION</th>
				<td><input type="text"		name="loc"		value="${loc	}"></td>
			</tr>
			
			<tr>
				<td colspan="5">
					<input type="submit" value="수정완료"/>
				</td>
			</tr>
		</table>
		</form>
		
	</body>
</html>