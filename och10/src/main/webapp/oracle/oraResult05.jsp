<%@page import="och10.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			ArrayList<Emp> al = (ArrayList<Emp>)request.getAttribute("al");
		%>
		<h1>MVC Model 1 View</h1>
			<table>
				<tr>
					<th>사번</th>
					<th>이름</th>
					<th>업무</th>
					<th>급여</th>				
				</tr>
		<%	
			for(int i = 0 ; i < al.size() ; i++){
				out.println("<tr><td>" + al.get(i).getEmpno());
				out.println("</td><td>" + al.get(i).getEname());
				out.println("</td><td>" + al.get(i).getJob());
				out.println("</td><td>" + al.get(i).getSal());				
			}
		%>
			
			</table>
		
		
	</body>
</html>