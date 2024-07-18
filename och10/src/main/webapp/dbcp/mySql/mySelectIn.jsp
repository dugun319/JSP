<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="och10.Professor"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<%
		ArrayList<Professor> al = new ArrayList<Professor>();
	
		Context ctx 	= new InitialContext();
		DataSource ds 	= (DataSource)ctx.lookup("java:comp/env/jdbc/MySql");
		Connection conn	= ds.getConnection();
		
		String sql		= "SELECT profno, name FROM professor";		
		Statement stmt	= conn.createStatement();		
		ResultSet rs	= stmt.executeQuery(sql);
		
		while(rs.next()){
			
			Professor prof 	= new Professor();
			
			prof.setProfno(rs.getInt(1));
			prof.setName(rs.getString(2));
			
			al.add(prof);			
		}
	
		request.setAttribute("al", al);
		
		conn.close();
		rs.close();
		stmt.close();
	
	%>

	<body>
		<h1>Information of Professor</h1>
			<form action="mySelect.jsp">
				<select name="profno">
					<c:forEach var="prof" items="${al}">
						<option value="${prof.profno }">${prof.profno } ${prof.name }</option>
					</c:forEach>
				</select>
				<p><input type="submit" value="Confirm"/></p>						
			</form>			
	</body>
</html>
