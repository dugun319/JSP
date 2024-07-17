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
			int dno = Integer.parseInt(request.getParameter("dno"));
		
			String driver	= "com.mysql.cj.jdbc.Driver";
			String url		= "jdbc:mysql://localhost:3306/scottdb?serverTimezone=UTC";
			String sql		= "SELECT * FROM division WHERE dno = " + dno;
			
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "root", "MySQL84");
			Statement stmt 	= conn.createStatement();
			ResultSet rs	= stmt.executeQuery(sql);	
			
			if(rs.next()){
				request.setAttribute("dno"		, dno);
				request.setAttribute("dname"	, rs.getString(2));
				request.setAttribute("phone"	, rs.getString(3));
				request.setAttribute("position"	, rs.getString(4));
				
				RequestDispatcher rd = request.getRequestDispatcher("myDivisionInfo.jsp");
				rd.forward(request, response);
				
				conn.close();
				stmt.close();
				rs.close();
			} else {
				out.println("NOP!");
			}
						
			conn.close();
			stmt.close();
			rs.close();		
		%>
	</body>
</html>