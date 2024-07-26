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
		<form action="deleteTestPro.do" method="post">
			<input type="hidden" name="num" 	value="${board.num }"/>
			<input type="hidden" name="pageNum" value="${pageNum }"/>
			<table>
				
				<tr><th>번호</th>		<td>${board.num }		</td></tr>			
				<tr><th>제목</th>		<td>${board.subject }"	</td></tr>
				<tr><th>작성자</th>	<td>${board.writer }">	</td></tr>
	
				<tr>
					<th>암호</th>	
					<td><input 	type="password" 
								name="passwd" 
								required="required" />
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<input 	type="submit" value="confirm"/>
						<script type="text/javascript">
							alert("Are You Sure?");
						</script>
					</td>
				</tr>
			</table>	
		</form>
	</body>
</html>