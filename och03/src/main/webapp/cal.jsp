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
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		int add = num1 + num2;
		int min = num1 - num2;
		int mul = num1 * num2;
		int div = num1 / num2;
			
		
		%>
		<h5>덧샘 : <%=num1%> + <%=num2%> = <%=add%></h5>
		<h5>뺄샘 : <%=num1%> - <%=num2%> = <%=min%></h5>
		<h5>곱샘 : <%=num1%> × <%=num2%> = <%=mul%></h5>
		<h5>나눗샘 : <%=num1%> ÷ <%=num2%> = <%=div%></h5>
		
	</body>
</html>