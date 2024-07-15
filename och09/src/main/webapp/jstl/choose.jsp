<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h2>Say Hello in switch</h2>
			<c:choose>
				<c:when test="${param.num1 == 0 }">HELLO</c:when>
				<c:when test="${param.num1 == 1 }">Bonjour</c:when>
				<c:when test="${param.num1 == 2 }">Guten Tag</c:when>
				<c:when test="${param.num1 == 3 }">Hola</c:when>
				<c:otherwise>WHAT???</c:otherwise>
			</c:choose>
	</body>
</html>