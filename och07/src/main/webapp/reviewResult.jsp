<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>Result of EL</h1>
			<h4>이름 : ${name}</h4>
			<h4>주소 : ${address}</h4>
			<h4>나이 : ${age}</h4>
			<h4>학력 : ${school}</h4>
			<h4>취미 : ${hobby[0]} ${hobby[1]} ${hobby[2]} ${hobby[3]}</h4>
			<h4>연봉 : ${salary}</h4>
		
		<%
		String	name 	= request.getAttribute("name").toString();
		String	address = request.getAttribute("address").toString();
		String	age 	= request.getAttribute("age").toString();
		String	school 	= request.getAttribute("school").toString();
		String [] hobby = (String [])request.getAttribute("hobby");
		String	salary 	= request.getAttribute("salary").toString();		
		%>
		<h1>Result of JAVA</h1>
			<h4>이름 : <%=name %></h4>
			<h4>주소 : <%=address %></h4>
			<h4>나이 : <%=age %></h4>
			<h4>학력 : <%=school %></h4>
			<h4>취미 : <%=hobby[0] %> <%=hobby[1] %> <%=hobby[2] %></h4>
			<h4>연봉 : <%=salary %></h4>
	
	</body>
</html>