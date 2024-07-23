<%@page import="och12.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
			String id     	= request.getParameter("id");
			String passwd 	= request.getParameter("passwd");
		    MemberDao md 	= MemberDao.getInstance();
		    // HW01
			int result    	= md.check(id, passwd);   
			// 존재하는 User   ---> PreparedStatement 사용
			if (result == 1) { 
				session.setAttribute("id",id);
				System.out.println(id + " have Logged in successfully");		
				response.sendRedirect("main.jsp");
			// Password X
			} else if (result == 0) { 
		%>
			<script type="text/javascript">
				alert("CHECK your password!!");	
				history.go(-1);
			</script>
		<% 
			} else { 
		%>
			<script type="text/javascript">
				alert("WHO the HELL are you??");	
				history.back();
			</script>
		<% 
			} 
		%>    
	
	</body>
</html>