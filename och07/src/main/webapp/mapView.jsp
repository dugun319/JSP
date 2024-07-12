<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h5>The address of "${param.NAME}" is ${Address[param.NAME]}</h5>
		<h5>The address of "Jessica" is ${Address["Jessica"]}</h5>
		<h5>The address of "Richard" is ${Address.Richard}</h5>
		<h5>The address of "Smith" is ${Address.Smith}</h5>
	</body>
</html>