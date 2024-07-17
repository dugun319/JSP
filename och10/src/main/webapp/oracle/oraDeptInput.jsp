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
<!--	<form action="oraDeptInput_01.jsp" method="post"> -->
		<form action="oraDeptInput_02.jsp" method="post">
		<table>
			<tr>
				<th>DEPT No.</th>
				<td><input type="number"	name="deptno"	required="required"></td>
			</tr>
			
			<tr>
				<th>DEPT Name</th>
				<td><input type="text"	name="dname"	required="required"></td>
			</tr>
			
			<tr>
				<th>LOCATION</th>
				<td><input type="text"	name="loc"		required="required"></td>
			</tr>
			
			<tr>
				<td colspan="5">
					<input type="submit" value="Confirm"/>
					<input type="reset"	 value="Cancel"/>
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>