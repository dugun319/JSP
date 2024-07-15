<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<body>

		<jsp:useBean id="person" class="och08.Person" scope="request"></jsp:useBean>
		
		<jsp:setProperty property="name"	name="person"	param="name"/>
		<jsp:setProperty property="gender"	name="person"	param="gender"/>
		<jsp:setProperty property="age"		name="person"	param="age"/>
		<jsp:forward page="personResult.jsp"></jsp:forward>
	</body>
	</body>
</html>