<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>Information of Professor</h1>
			<h4>교수번호 : ${professor.profno	 }</h4>
			<h4>교수이름 : ${professor.name	 }</h4>
			<h4>교수봉급 : 
				<fmt:formatNumber value="${professor.sal	 }" groupingUsed="true"/>
				</h4>
			<h4>입사일자 : 
				<fmt:formatDate	  value="${professor.hiredate}" type="date" pattern="yyyy/MM/dd(E)"/>
			</h4>
	</body>
</html>