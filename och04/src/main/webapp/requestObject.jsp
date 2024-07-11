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
		String	protocol	= request.getProtocol(); 
		String	server		= request.getServerName();
		int port			= request.getServerPort();
		String	clientIp	= request.getRemoteAddr();
		String	clientHost	= request.getRemoteHost();
		String	methodType	= request.getMethod();
		String	url			= new String(request.getRequestURL());
		String	uri			= request.getRequestURI();
		String	contextPath = request.getContextPath();
		String	browser		= request.getHeader("User-Agent");
		String	mediaType	= request.getHeader("Accept");
		%>
		
		<h2>Request 내장 객체 예제</h2>
		<h5>프로토콜 : <%=protocol %></h5>
		<h5>접속한 서버 이름 : <%=server %></h5>
		<h5>접속한 서버의 포트 번호 : <%=port %></h5>
		<h5>클라이언트 IP : <%=clientIp %></h5>
		<h5>클라이언트 HOST : <%=clientHost %></h5>
		<h5>Current Page Method : <%=methodType %></h5>
		<h5>URL : <%=url %></h5>
		<h5>URI : <%=uri %></h5>
		<h5>Web Browser : <%=browser %></h5>
		<h5>웹 어플리케이션의 컨텍스트 경로 : <%=contextPath %></h5>
		<h5>미디어 타입 : <%=mediaType %></h5>
	</body>
</html>