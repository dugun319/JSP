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
		<jsp:useBean id="review" class="och09.Review" scope="request"></jsp:useBean>
		<h1>Result PAGE</h1>
			<h4>이름 : <jsp:getProperty property="name" name="review"/></h4>
			<h4>주소 : <jsp:getProperty property="address" name="review"/></h4>
			<h4>나이 : <jsp:getProperty property="age" name="review"/></h4>
			<h4>학력 : 
				<c:choose>
					<c:when test="${param.school == 0 }">초등학교</c:when>
					<c:when test="${param.school == 1 }">중학교</c:when>
					<c:when test="${param.school == 2 }">고등학교</c:when>
					<c:when test="${param.school == 3 }">대학교</c:when>
					<c:when test="${param.school == 4 }">대학원이상</c:when>
				</c:choose>
			</h4>			
			<h4>취미 : 
				<c:forEach var="ho" items="${paramValues.hobby }">
					${ho} 
				</c:forEach>
			</h4>
			<h4>연봉 : <jsp:getProperty property="salary" name="review"/></h4>
	</body>
</html>