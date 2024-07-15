<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL CORE library</title>
<style type="text/css">
	h5{
		color: red;
	}
</style>
</head>
	<body>
		<c:catch var="e1">	<!-- Exception e1 과 유사한 표현 -->
			<%
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));			
			%>
			<h4>Result of Calculation : <%=num1 / num2 %></h4>		
		</c:catch>
		<c:if test="${e1 != null }">
			<h5>Error Message : ${e1.message}</h5>		
		</c:if>
	</body>
</html>