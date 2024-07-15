<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<jsp:useBean id="pt" class="och08.Book" scope="request"/>
		<jsp:setProperty property="*" name="pt"/>
		<h4>코드 : <jsp:getProperty property="code"	name="pt"/></h4>
		<h4>이름 : <jsp:getProperty property="name"	name="pt"/></h4>
		<h4>가격 : <jsp:getProperty property="price"	name="pt"/></h4>
		<h4>작가 : <jsp:getProperty property="writer"	name="pt"/></h4>
		<h4>전체 : <jsp:getProperty property="page"	name="pt"/></h4>
	</body>
</html>