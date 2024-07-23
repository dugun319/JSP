<%@page import="och12.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ include file="memberCheck.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<jsp:useBean id="member" class="och12.Member" scope="request"></jsp:useBean>
		<jsp:setProperty property="*" name="member"/>
		
		<%
			MemberDao md	= MemberDao.getInstance();
			int result		= md.update(member); 
			if(result > 0){
		%>
			<script type="text/javascript">
				alert("Uptate is completed");
				location.href="main.jsp";
			</script>
		<%
			}else{
		%>
			<script type="text/javascript">
				alert("Uptate is failed");
				history.back();
			
			</script>
		<%
			}
		%>			
	</body>
</html>