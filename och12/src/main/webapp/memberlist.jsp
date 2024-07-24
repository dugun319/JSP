<%@page import="och12.Member"%>
<%@page import="java.util.List"%>
<%@page import="och12.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ include file="memberCheck.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-color: lightskyblue;
	}
	th {
		width: 50px;
		border: 1px solid;
		padding: 10px;
		text-align: center;
	}
	
	td {
		width: 250px;
		padding: 10px;
		border: 1px solid;
		text-align: center;
	}
	
	table {
		border-collapse: collapse ;
		border: 2px solid;
		border-radius: 10px;		
		background-color : aliceblue;
	}
	
	tr:hover {
		background-color : paleturquoise;
	}
</style>
</head>
	<body>
		<%
			MemberDao md 		= MemberDao.getInstance();
			List<Member> list	= md.list(); 
			if(list == null){
				out.println("회원이 없습니다");
			}else{		
		%>
		<table>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>주소</th>
				<th>전화번호</th>
				<th>가입일</th>		
			</tr>
		<%
			for(int i = 0 ; i < list.size() ; i++){
				out.println("<tr><td>"  + list.get(i).getId() +
							"</td><td>" + list.get(i).getName() +
							"</td><td>" + list.get(i).getAddress() +
							"</td><td>" + list.get(i).getTel() +
							"</td><td>" + list.get(i).getReg_date() +
							"</td></tr>");				
			}
		%>
		</table>	
		<%
		}
		%>
	</body>
</html>