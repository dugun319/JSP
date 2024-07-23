<%@page import="och15.MemberDao"%>
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
			String id				= request.getParameter("id");
			MemberDao	memberDao	= MemberDao.getInstance();
			
			int result				= memberDao.confirm(id);
			
			if(result == 0){
				out.println("사용할 수 있는 ID");
			}else{
				out.println("사용할 수 없는 ID");
			}
		
		
		%>
	</body>
</html>