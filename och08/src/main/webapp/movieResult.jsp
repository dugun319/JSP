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
		String name 	= request.getParameter("name");
		String [] movie	= request.getParameterValues("movie");
		
		String strMovie = "";
		
		for(int i = 0 ; i < movie.length ; i++){
			if(i == (movie.length - 1)){
				strMovie += movie[i];
			}else{
				strMovie += movie[i] + ", ";
			}
		}
		%>
		
		<h3><%=name %> likes <%=strMovie %> hut</h3>
		
		
	</body>
</html>