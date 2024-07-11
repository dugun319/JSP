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
			try {
				int num = Integer.parseInt(request.getParameter("num"));
				if(num > 9 || num < 2) {

		%>
		
		<script type="text/javascript">
			alert("WHAT????");
			history.go(-1);
		</script>
		
		<%
			} else {
				
				out.println("<h2> GUGUDAN " + num + " DAN</h2>");
				
				for(int i = 1 ; i <= 9 ; i++){
					out.println("<p>" + num + " X " + i + " = " + (num*i) + "</p>");
				}
			}
			
		} catch (Exception e) {
			
		%>
		
		<script type="text/javascript">
			alert("ENTER THE NUMERIC VALUE????");
			history.go(-1);
		</script>
		<%
		}
		%>		

	</body>
</html>