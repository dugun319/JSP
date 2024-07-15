<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		border: 3px solid;
		border-collapse: collapse;
		background-color: aliceblue;
	}
	
	th, td{
		border: 1px solid;
		border-collapse: collapse;
		text-align: center;
		padding: 15px;
		width: 150px;		
	}
	
	body {
		background-color: lightskyblue;
	}

</style>
</head>
	<body>
		<jsp:useBean id="person" class="och08.Person" scope="request"></jsp:useBean>
		<h2>Personal Information</h2>
	   <%-- <p>NAME : <jsp:getProperty property="name"		name="person"/></p>
			<p>GEN. : <jsp:getProperty property="gender"	name="person"/></p>
			<p>AGE. : <jsp:getProperty property="age"		name="person"/></p> --%>
			
			<table>
				<tr>
				<th>NAME</th>
				<td><jsp:getProperty property="name"	name="person"/></td>
				</tr>
				
				<tr>
				<th>Gender</th>
				<td><jsp:getProperty property="gender"	name="person"/></td>
				</tr>
				
				<tr>
				<th>AGE</th>
				<td><jsp:getProperty property="age"		name="person"/></td>
				</tr>	
			
			</table>
	</body>
</html>