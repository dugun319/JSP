<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>Product Information</h1>
		<jsp:useBean id="pt" class="och08.Product" scope="request"></jsp:useBean>
		<h4>코드 : <jsp:getProperty property="code"	name="pt"/></h4>
		<h4>이름 : <jsp:getProperty property="name"	name="pt"/></h4>
		<h4>가격 : <jsp:getProperty property="price"	name="pt"/></h4>
	</body>
</html>