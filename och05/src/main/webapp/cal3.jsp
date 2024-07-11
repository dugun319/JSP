<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>RESULT of CAL3</h1>
		
		<%
		
		try {
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));

			out.println("<h5>" + num1 + " + " + num2 + " = " + (num1 + num2) + "</h5>");
			out.println("<h5>" + num1 + " - " + num2 + " = " + (num1 - num2) + "</h5>");
			out.println("<h5>" + num1 + " X " + num2 + " = " + (num1 * num2) + "</h5>");
			out.println("<h5>" + num1 + " / " + num2 + " = " + (num1 / num2) + "</h5>");			
			
		} catch (NumberFormatException e) {
		%>
		<script type="text/javascript">
			alert("Don't you know what is the NUMBER?");
			history.go(-1);
		</script>
		<%
		} catch (ArithmeticException e) {
		%>			
		<script type="text/javascript">
			alert("You could not divide number with ZERO!");
			history.back();
		</script>
		<%
		} catch (Exception e) {
		%>
		<script type="text/javascript">
			alert("ERROR is ERROR");
			location.href="num_02.html";
			/* response.sendRedirect("num2_02.html"); */
		</script>
		<%	
		}		
		%>
	</body>
</html>