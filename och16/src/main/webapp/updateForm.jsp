<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD EDIT</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
	<body>
	<form action="updatePro.do" method="post">
		<input type="hidden" name="num" 	value="${board.num }"/>
		<input type="hidden" name="pageNum" value="${pageNum }"/>
		<table>
			<caption>BOARD EDIT</caption>
			
			<tr><th>번호</th>		<td>${board.num }		</td></tr>
			
			<tr>
				<th>제목</th>		
				<td>
					<input 	type="text" 
							name="subject" 
							required="required" 
							value="${board.subject }"/>	
				</td>
			</tr>
			
			<tr>
				<th>작성자</th>	
				<td>
					<input 	type="text" 
							name="writer" 
							required="required" 
							value="${board.writer }"/>	
				</td>
			</tr>
			
			<tr>
				<th>이메일</th>	
				<td>
					<input 	type="text" 
							name="email" 
							required="required" 
							value="${board.email }"/>
				</td>
			</tr>
			
			<tr>
				<th>암호</th>	
				<td>
					<input 	type="password" 
							name="passwd" 
							required="required" 
							value="${board.passwd }"/>
				</td>
			</tr>
			
			<tr>
				<th>내용</th>	
				<td>
					<textarea 	cols="45" rows="20" 
								name="content" 
								required="required">
					${board.content }</textarea>
				</td>
			
			<tr>
				<td colspan="5">
					<input 	type="submit" value="confirm"/>
				</td>
			</tr>
		</table>
	
	</form>
		
	</body>
</html>