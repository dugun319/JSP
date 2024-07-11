<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>RESULT of CAL1</h1>
		
		<%
		try {
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));

			out.println("<h5>" + num1 + " + " + num2 + " = " + (num1 + num2) + "</h5>");
			out.println("<h5>" + num1 + " - " + num2 + " = " + (num1 - num2) + "</h5>");
			out.println("<h5>" + num1 + " X " + num2 + " = " + (num1 * num2) + "</h5>");
			out.println("<h5>" + num1 + " / " + num2 + " = " + (num1 / num2) + "</h5>");			
			
		} catch (NumberFormatException e) {
			out.println("Don't you know what is the NUMBER?");			
		} catch (ArithmeticException e) {
			out.println("You could not divide number with ZERO!");	
		} catch (Exception e) {
			out.println(e.getMessage());
		}		
		%>
	</body>
</html>