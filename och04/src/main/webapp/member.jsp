<%@page import="java.io.FileWriter"%>
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
		
		//DATE LOAD
		String id		= request.getParameter("id");
		String name		= request.getParameter("name");
		String password	= request.getParameter("password");
		String [] hobby = request.getParameterValues("hobby");
		String gender	= request.getParameter("gender");
		
		String strHobby = "";
		for(int i = 0 ; i < hobby.length ; i++){
			strHobby += hobby[i] + " ";
		}
		
		//MAKE massege
		String msg		= "ID : "			 	+ id 		+ "\r\n";
		msg				= msg + "NAME : "		+ name		+ "\r\n";
		msg				= msg + "PASSWORD : "	+ password	+ "\r\n";
		msg				= msg + "HOBBY : "		+ strHobby	+ "\r\n";
		msg				= msg + "GENDER : "		+ gender	+ "\r\n";
		
		//Create file
		String	path	= application.getRealPath("/WEB-INF/folder/" + id + ".txt");
		System.out.println(path);		
		FileWriter fw 	= new FileWriter(path);		
		fw.write(msg);
		fw.close();		
		%>
		
		<h2>USER INFORMATION</h2>
		<h3>USER ID : <%=id %></h3>
		<h3>USER NAME : <%=name %></h3>
		<h3>PASSWORD : <%=password %></h3>
		<h3>Hobby : <%=strHobby %></h3>
		<h3>GENDER : <%=gender %></h3>
	
		
	</body>
</html>