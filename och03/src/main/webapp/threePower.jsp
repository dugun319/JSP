<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%!
		
		int threePower(int x){
			
			int result = x * x * x;
		
			return result;
		}
		
		%>
		
		<h3>2^3 = <%=threePower(2) %></h3>
		<h3>3^3 = <%=threePower(3) %></h3>
		<h3>4^3 = <%=threePower(4) %></h3>
		<h3>5^3 = <%=threePower(5) %></h3>
		<h3>6^3 = <%=threePower(6) %></h3>
		<h3>7^3 = <%=threePower(7) %></h3>		
		
	</body>
</html>