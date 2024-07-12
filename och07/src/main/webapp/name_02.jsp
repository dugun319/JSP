<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h2>Your name is</h2>
		<h1>${param.name}</h1>
		<br>
		<h2>삼항연산자</h2>
		<h1>HELLO~~~ ${empty param.name? "Guest" : param.name }</h1>
	</body>
</html>