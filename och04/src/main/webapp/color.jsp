<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h1{
		margin: 20px;
		padding: 25px;
		background-color: aliceblue;
		font-family: arial;
	}

</style>
</head>
	
	<%
	String color 	= "";
	String str		= "";
		
	int num = Integer.parseInt(request.getParameter("color"));
		
	switch(num){
		case 0:
			color 	= "red";
			str		= "빨강";
			break;
		case 1:
			color 	= "orange";
			str		= "주황";
			break;
		case 2:
			color 	= "yellow";
			str		= "노랑";
			break;
		case 3:
			color 	= "green";
			str		= "초록";	
			break;
		case 4:
			color 	= "blue";
			str		= "파랑";
			break;
		case 5:
			color 	= "navy";
			str		= "남색";
			break;
		case 6:
			color 	= "purple";
			str		= "보라";
			break;				
	}
	%>
	<body bgcolor="<%=color%>">
		<h1>I think you like <%=str %></h1>
	</body>
</html>