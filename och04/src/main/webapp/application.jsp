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
		String info = application.getServerInfo();
		int major	= application.getMajorVersion();
		int minor	= application.getMinorVersion();
		String path = application.getRealPath("/");		
		%>
		
		<h2>Application 내장객체 예제</h2>
		
		<h5>Web Container Name and Version : <%=info %></h5>
		<h5>Servlet Version : <%=major %>.<%=minor %></h5>
		<h5>Path of web application local folder : <%=path %></h5>
		
	</body>
</html>