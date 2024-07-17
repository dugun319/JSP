<%@page import="och10.Professor"%>
<%@page import="java.util.ArrayList"%>
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
			String driver	= "com.mysql.cj.jdbc.Driver";
			String url		= "jdbc:mysql://localhost:3306/scottdb?serverTimezone=UTC";
			String sql		= "SELECT profno, name, position, sal FROM professor";
			
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, "root", "MySQL84");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			ArrayList<Professor> al = new ArrayList<Professor>();

			if(rs.next()){				
				do{				
					Professor professor = new Professor();
					
					professor.setProfno(rs.getInt(1));
					professor.setName(rs.getString(2));
					professor.setPosition(rs.getString(3));
					professor.setSal(rs.getInt(4));
					
					al.add(professor);
					
				} while(rs.next());
				
				request.setAttribute("al", al);
				
				conn.close();
				stmt.close();
				rs.close();
				
				RequestDispatcher rd = request.getRequestDispatcher("my05Result2.jsp");
				rd.forward(request, response);
				
			}else{
				out.println("없다");
				conn.close();
				stmt.close();
				rs.close();
			}
		%>
	</body>

</html>