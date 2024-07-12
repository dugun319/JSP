<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>WINNER of EL</h1>
		<h5>1st : ${winner[0]}</h5>
		<h5>2nd : ${winner[1]}</h5>
		<h5>3rd : ${winner[2]}</h5>
		
		<h1>WINNER of JAVA</h1>
		<%
		String [] strWinner = (String [])request.getAttribute("winner");
		
		for(int i = 0 ; i < strWinner.length ; i++){
			out.println("<p>" + (i + 1) + " place : " + strWinner[i] + "</p>");
		}
		
		%>
	
	</body>
</html>