<%@page import="java.sql.Statement"%>
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
			int deptno		= Integer.parseInt(request.getParameter("deptno"));
		
			String driver	= "oracle.jdbc.driver.OracleDriver";
			String url		= "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String sql		= "DELETE FROM dept WHERE deptno = " + deptno;
						
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "scott", "tiger");
			Statement stmt = conn.createStatement();
			int result = stmt.executeUpdate(sql);
			
			if(result > 0){
				out.println("성공");
			}else{
				out.println("실패");
			}
			
			conn.close();
			stmt.close();
			
		%>
	
	</body>
</html>