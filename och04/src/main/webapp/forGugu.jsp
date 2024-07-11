<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		border: 1px solid;
		background-color: aliceblue;
	}
	
	th, td:hover, tr{
		border: 1px solid;
		padding: 15px;
	}
</style>
</head>
	<body>
		<h2>GUGUDAN</h2>
			<table>
				<tr>
					<%
					for(int i = 2 ; i <= 9 ; i++){
						out.println("<th>" + i + " DAN</th>");						
					}
					out.println("</tr>");
					out.println("<tr>");
					for(int i = 2 ; i <= 9 ; i++){
						if(i % 2 == 0 ){
							out.println("<td bgcolor = beige");
						}else{
							out.println("<td bgcolor = ivory");
						}
						
						for(int j = 1 ; j <= 9 ; j++){
							out.println("<p>" + i + " X " + j + " = " + (i*j) + "</p>");
						}
						
						out.println("</td>");
					}
					%>
						
				</tr>
			</table>
	</body>
</html>