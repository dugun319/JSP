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
		<%
			String password = request.getParameter("passwd");
			MemberDao md	= MemberDao.getInstance();
			System.out.println("Deledte id -> " + id);
			
			int result		= md.delete(id, password);
			
			if(result == 1){
				session.invalidate();
		%>
			<script type="text/javascript">
				alert("회원탈퇴가 완료되었습니다");
				location.href="main.jsp";
			</script>
		<%
			}else if(result == 0){
		%>
			<script type="text/javascript">
				alert("암호가 틀렸습니다.");
				history.back();
			</script>
		<%
			}else{
		%>
			<script type="text/javascript">
				alert("사용자가 다릅니다.");
				history.go(-1);
			</script>
		<%
			}		
		%>
	</body>
</html>