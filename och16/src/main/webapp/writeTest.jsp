<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
	<body>
		<h2>NEW WRITE</h2>
		<form action="writeTestPro.jsp">
		<table>
			<tr>
				<th>번호</th>	 
				<td>${num }	<input type="hidden"	name="num"	value="${num }"/></td>
			</tr>
			
			<tr>
				<th>제목</th>	 
				<td>		<input type="text" 		name="subject"/></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td>		<input type="text" 		name="writer"/></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td>		<input type="text" name="email"/></td>
			</tr>
			
			<tr>
				<th>내용</th>	
				<td>		<textarea name="content"	cols="45" rows="20"></textarea></td>
			</tr>
			
			<tr>
				<td colspan="5">
					<input 	type="submit" value="confirm"/>
					<input 	type="reset"  value="Cancel"/>
				</td>
			</tr>		
		</table>
		</form>
	</body>
</html>