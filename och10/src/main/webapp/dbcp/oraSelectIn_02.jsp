<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="och10.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="../dbError.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		background-color: aliceblue;
		border: 2px solid;
	}
	
	tr:hover{
		background-color: lightskyblue;
	}
	
	th, tr, td{
		border: 1px solid;
		width: 100px;
		padding: 10px;
		text-align: center;
	}
</style>
</head>
	<body>
		<%
			ArrayList<Emp> al = new ArrayList<Emp>();
			
			Context ctx 	= new InitialContext();
			DataSource ds 	= (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			Connection conn	= ds.getConnection();
			
			String sql		= "SELECT empno, ename FROM emp";			
			Statement stmt	= conn.createStatement();
			ResultSet rs	= stmt.executeQuery(sql);
			
			if(rs.next()){
				do{
					Emp emp = new Emp();
					
					emp.setEmpno(rs.getInt(1));
					emp.setEname(rs.getString(2));
					
					al.add(emp);
				}while(rs.next());
			}else{
				out.println("NOP");
			}
			
			request.setAttribute("al", al);
			
			conn.close();
			stmt.close();
			rs.close();			
		%>
		<h2>사번정보 입력</h2>
<!-- 		<form action="oraSelect.jsp" method="post"> -->
			<form action="oraCallEmpInfo.jsp" method="post">
				<select name="empno">
					<c:forEach var="emp" items="${al }">
						<option value="${emp.empno }">${emp.empno } ${emp.ename }</option>					
					</c:forEach>			
				</select>
				<p><input type="submit" value="Confirm"/></p>
			</form>	
	</body>
</html>