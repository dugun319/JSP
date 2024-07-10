<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
	
		<h3>2^0 = <%=power(2, 0) %></h3>
		<h3>2^1 = <%=power(2, 1) %></h3>
		<h3>2^2 = <%=power(2, 2) %></h3>
		<h3>2^3 = <%=power(2, 3) %></h3>
		<h3>2^4 = <%=power(2, 4) %></h3>
		<h3>2^5 = <%=power(2, 5) %></h3>
		<h3>2^6 = <%=power(2, 6) %></h3>
		<h3>2^7 = <%=power(2, 7) %></h3>
				
		<%!
		int power(int x, int y){
			int result = 1;
			
			for(int i = 0 ; i < y ; i++) {
				result *= x;
			}
			return result;
		}
		%>
	</body>
</html>