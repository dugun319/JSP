<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<jsp:useBean id="person" class="och08.Person" scope="request"></jsp:useBean>
		<jsp:setProperty property="name" 	name="person" param="name"/>
		<jsp:setProperty property="gender"	name="person" value="male"/>
		
		<h2>Personal Information</h2>
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
				<th>Gender</th>
				<td><jsp:getProperty property="age"		name="person"/></td>
				</tr>	
			
			</table>
		
		
	</body>
</html>