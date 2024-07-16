<%@page import="java.sql.ResultSet"%>
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
			String driver	= "oracle.jdbc.driver.OracleDriver";
			String url		= "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String sql		= "SELECT * FROM dept WHERE deptno =" + deptno;
			
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "scott", "tiger");
			Statement stmt	= conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				String dname	= rs.getString("dname");
				String loc		= rs.getString(3);
				
				out.println("<p>부서코드 : " + deptno + "</p>");
				out.println("<p>부서이름 : " + dname + "</p>");
				out.println("<p>근무위치 : " + loc + "</p>");
			}else{
				out.println("<p>??????????</p>");
			}
			
			rs.close();
			stmt.close();
			conn.close();
			
		%>
	</body>
</html>