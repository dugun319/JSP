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
			String sql		= "SELECT deptno, dname, loc FROM dept WHERE deptno =" + deptno;
						
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "scott", "tiger");
			Statement stmt	= conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				request.setAttribute("deptno", deptno);
				request.setAttribute("dname", rs.getString("dname"));
				request.setAttribute("loc", rs.getString("loc"));
				
				rs.close();
				stmt.close();
				conn.close();
				
				RequestDispatcher rd = request.getRequestDispatcher("oraDeptIn.jsp");
				rd.forward(request, response);
			}
			
			stmt.close();
			conn.close();
		%>
	</body>
<script type="text/javascript">
	alert("없는 부서입니다");
	location.href = "oraDeptUpdate.html";
</script>
</html>