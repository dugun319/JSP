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
		<form action="myUpdate.jsp">
			<table>
				<tr>
					<th>부서번호</th>
					<td>${dno	}
					    <input type="hidden" 	name="dno" 		value="${dno 	}"></td>
				</tr>
				
				<tr>
					<th>부서이름</th>
					<td><input type="text"		name="dname"	value="${dname 	}"></td>
				</tr>
				
				<tr>
					<th>전화번호</th>
					<td><input type="text"		name="phone"	value="${phone	}"></td>
				</tr>
				
				<tr>
					<th>근무직위</th>
					<td><input type="text"		name="position"	value="${position}"></td>
				</tr>
				
				<tr>
					<td colspan="5">
						<input type="submit" value="수정"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>