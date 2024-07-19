<%@page import="och11.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="../error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
			String id		= request.getParameter("id");
			String password = request.getParameter("password");
			
			MemberDao md 	= new MemberDao();
			
			out.println("LoginPro.line17");
			
			int result 		= md.check(id, password);
			
			out.println("LoginPro.line21");
			 
			if(result == 1){
				session.setAttribute("id", id);
				response.sendRedirect("sessionMain.jsp");
			} else if(result ==0) {
		%>
		<script type="text/javascript">
			alert("You have entered the wrong password");
			history.go(-1);
		</script>
		<%
			}else{
		%>	
		<script type="text/javascript">
			alert("Who are Y!O!U!???");
			history.back();
		</script>
		<%  }	%>
	</body>
</html>