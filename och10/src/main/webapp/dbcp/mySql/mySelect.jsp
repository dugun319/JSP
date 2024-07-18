<%@page import="och10.Professor"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="../dbError"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
			int profno	= Integer.parseInt(request.getParameter("profno"));
		
			Context ctx 	= new InitialContext();
			DataSource ds 	= (DataSource)ctx.lookup("java:comp/env/jdbc/MySql");
			Connection conn	= ds.getConnection();
			
			String sql		= 
					"SELECT profno, name, sal, hiredate FROM professor WHERE profno=" + profno;
			Statement stmt	= conn.createStatement();		
			ResultSet rs	= stmt.executeQuery(sql);
			
			Professor professor = new Professor();
			
			if(rs.next()){
				professor.setProfno(rs.getInt(1));
				professor.setName(rs.getString(2));
				professor.setSal(rs.getInt(3));
				professor.setHiredate(rs.getDate(4));
				
				request.setAttribute("professor", professor);
			}
			
			conn.close();
			stmt.close();
			rs.close();
			
			RequestDispatcher rd = request.getRequestDispatcher("myResult.jsp");
			rd.forward(request, response);		
		
		%>
	</body>
</html>