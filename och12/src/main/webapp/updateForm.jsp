<%@page import="och12.Member"%>
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
			MemberDao md	= MemberDao.getInstance();
			Member member	= md.select(id);
			String context	= request.getContextPath();		
		%>
		<h2>회원정보 수정</h2>
			<form action="updatePro.jsp">
			<table>
				<tr>
					<th>아이디</th>
					<td><%=id %>
						<input	type=	"hidden" 	
								name=	"id"
								value=	"<%=member.getId()%>"/>
					</td>					
				</tr>
				
				<tr>
					<th>Password</th>
					<td><input	type="password" 	
								name="passwd" 	
								required="required"/></td>					
				</tr>
				
				<tr>
					<th>Name</th>
					<td><input	type=		"text"
							 	name=		"name"
							  	required=	"required"
							  	value=		"<%=member.getName()%>"/>
					</td>					
				</tr>
				
				<tr>
					<th>Address</th>
					<td><input	type=		"text" 	
								name=		"address" 	
								required=	"required"
								value=		"<%=member.getAddress()%>"/></td>					
				</tr>
				
				<tr>
					<th>Cellular phone</th>
					<td><input	type=		"tel" 	
								name=		"tel" 	
								required=	"required"
								pattern=	"\d{2, 3} - \d{3, 4} - \d{4}"
								placeholder="010-xxxx-xxxx"
								title=		"2,3자리 - 3,4자리 - 4자리"
								value=		"<%=member.getTel()%>"/>
					</td>					
				</tr>
				
				<tr>
					<th>입사일</th>
					<td><%=member.getReg_date()%></td>					
				</tr>
				
				<tr>
					<td><input	type="submit" 	value="Confirm"/></td>
					<td><input	type="reset" 	value="Cancel" /></td>					
				</tr>
						
			</table>		
		</form>
		
	
	</body>
</html>