<%@page import="och10.Dept"%>
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
			// DTO : Data Transfer Object
			// DAO : Data Access Object
			
			String deptno	= request.getParameter("deptno");
			String driver	= "oracle.jdbc.driver.OracleDriver";
			String url		= "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String sql		= "SELECT * FROM dept WHERE deptno =" + deptno;
						
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "scott", "tiger");
			Statement stmt	= conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			 // 1. declaration of DTO
			Dept dept = new Dept();
			
			if(rs.next()){
				int deptnoInt	= rs.getInt(1);		
				String dname	= rs.getString("dname");
				String loc		= rs.getString(3);
				
				// 2. setting of DTO
				dept.setDeptno(deptnoInt);
				dept.setDname(dname);
				dept.setLoc(loc);
				
				//3. sending of DTO
				request.setAttribute("dept", dept);
				
			}else{
				out.println("<p>??????????</p>");
			}
			
			
			rs.close();
			stmt.close();
			conn.close();
			
			RequestDispatcher rd = request.getRequestDispatcher("ora04Result.jsp");
			rd.forward(request, response);
		%>
	</body>
</html>