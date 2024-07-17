<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
			int dno		 	= Integer.parseInt(request.getParameter("dno"));
			String dname 	= request.getParameter("dname");
			String phone 	= request.getParameter("phone");
			String position = request.getParameter("position");
			
			String driver	= "com.mysql.cj.jdbc.Driver";
			String url		= "jdbc:mysql://localhost:3306/scottdb?serverTimezone=UTC";
			String sql		= "UPDATE division SET dname = ?, phone = ?, position = ? WHERE dno = " + dno;
			
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "root", "MySQL84");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dname);
			pstmt.setString(2, phone);
			pstmt.setString(3, position);

			int result = pstmt.executeUpdate();
			
			if(result > 0){
				out.println("성공");
			}else{
				out.println("실패");
			}
		
		%>
	</body>
</html>