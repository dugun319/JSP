<%@ page import="och14.MemberDao"%>
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
			String id		= request.getParameter("id");
			String password = request.getParameter("password");
			
			System.out.println("Check.jsp_line16");
			
			MemberDao md 	= new MemberDao();
						
			System.out.println("Check.jsp_line20");
			
			int result 		= md.check(id, password);
			
			if(result == 1){
				session.setAttribute("id", id);
				System.out.println("Access allowed");
			}else if(result == 0){
				System.out.println("Access denied, check your password");
		%>
			<script type="text/javascript">
				alert("Access denied, check your password");
				history.go(-1);
			</script>			
		<%
			}else{
		%>
			<script type="text/javascript">
				alert("Access denied, You are not a member of MEMBER1");
				history.go(-1);
			</script>	
		<%		
			}
		%>
		
		<a href="sub2/winner.jsp">당첨자 보기</a>
	</body>
</html>