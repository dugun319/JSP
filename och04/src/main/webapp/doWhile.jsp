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
	
	th, td, tr{
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
					int i = 2;
					int j = 2;
					
					do{
						out.println("<th>" + i + " DAN</th>");
						i++;
					} while(i <= 9);
					
					out.println("</tr>");
					out.println("<tr>");
					
					i = 2;
					j = 1;
					
					do{
						if(i % 2 == 0 ){
							out.println("<td bgcolor = beige");
						}else{
							out.println("<td bgcolor = ivory");
						}
						do{
							out.println("<p>" + i + " X " + j + " = " + (i * j) + "</p>");
							j++;
						}while(j <= 9);
						
						out.println("</td>");
						j=1;
						i++;
					}while(i <= 9);
					%>
				</tr>
			
			</table>
	</body>
</html>