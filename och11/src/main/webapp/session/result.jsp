<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		
		<h1>${param.chk }</h1>
		<%
			String chk = request.getParameter("chk");
			if(chk.equals("success")){
				out.println("회원가입을 축하합니다");
			}else{
				out.println("회원가입을 먼저 진행해주세요.");
			}
		%>
		
	</body>
</html>