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
			String deptno	= request.getParameter("deptno");
			String dname	= request.getParameter("dname");
			String loc		= request.getParameter("loc");
			
			String driver	= "oracle.jdbc.driver.OracleDriver";
			String url		= "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String sql		= String.format("INSERT INTO dept VALUES ('%s', '%s', '%s')",
							deptno, dname, loc);	
			System.out.println("SQL->" + sql);
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "scott", "tiger");
			Statement stmt	= conn.createStatement();
			int result = stmt.executeUpdate(sql);
			
			if(result > 0){
				out.println("입력 성공");
			} else {
				out.println("입력 실패");
			}
			conn.close();
			stmt.close();
		%>			
	</body>
</html>