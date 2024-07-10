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
		String [] color = {"red", "orange", "yellow", "green", "blue", "navy", "purple"};
		int n 			= (int)(Math.random()*8);
		String	pgm		= request.getParameter("pgm") + ".jsp";
		System.out.println("pgm -> " + pgm);
		
		RequestDispatcher rd = request.getRequestDispatcher(pgm);
		
		if(pgm.equals("color1.jsp")){
			request.setAttribute("color", color[n]);
		} else if(pgm.equals("gugu1.jsp")){
			request.setAttribute("num", n+2);
		} else if(pgm.equals("res.jsp")){
			
		}
		
		rd.forward(request, response);
		%>
	</body>
</html>