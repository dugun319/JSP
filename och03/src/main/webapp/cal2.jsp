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
		
		request.setAttribute("add_R", add);
		request.setAttribute("min_R", min);
		request.setAttribute("mul_R", mul);
		request.setAttribute("div_R", div);
		
		RequestDispatcher rd = request.getRequestDispatcher("calResult.jsp");
		rd.forward(request, response);
		
		%>
	</body>
</html>