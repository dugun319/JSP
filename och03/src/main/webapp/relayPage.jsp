<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
		request.setCharacterEncoding("utf-8");
		
		String name 	= request.getParameter("name");
		String address 	= request.getParameter("address");
		int age 		= Integer.parseInt(request.getParameter("age").toString());
		String school 	= request.getParameter("school");
		String [] hobby = request.getParameterValues("hobby");
		String salary	= request.getParameter("salary");
		
		String strHobby = "";
		
		for(int i = 0 ; i < hobby.length ; i++) {
			strHobby = strHobby + " " + hobby[i]; 
		}
				
		%>
		<h1>Personal Information</h1>
		<h3>이름 : <%=name %></h3>
		<h3>주소 : <%=address %></h3>
		<h3>나이 : <%=age %></h3>
		<h3>학력 : <%=school %></h3>
		<h3>취미 : <%=strHobby %></h3>
		<h3>연봉 : <%=salary %></h3>
	
	</body>
</html>