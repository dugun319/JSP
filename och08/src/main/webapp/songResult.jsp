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
		String name 	= request.getParameter("name");
		String [] song	= request.getParameterValues("song");
		String strSong 	= "";
		
		if(song != null){
			for(int i = 0 ; i < song.length ; i++){
				if(i == (song.length - 1)){
					strSong += song[i];
				} else {
					strSong += song[i] + ", ";
				}
			}
		}
		%>
		
		
		
		<h3><%=name %>'s personal music chart is <%=strSong %> </h3>
	</body>
</html>