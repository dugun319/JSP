<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
<style type="text/css">
	caption {
		padding: 30px;
		font-size: 25px;
		font-weight: bold;
	}
</style>
</head>
	<body>
		
		<table>
			<caption>게시판 상세내역 ${board.num }</caption>
			<tr><th>번호</th>		<td>${board.num }		</td></tr>
			
			<tr><th>제목</th>		<td>${board.subject }	</td></tr>
			
			<tr><th>작성자</th>	<td>${board.writer }	</td></tr>
			
			<tr><th>작성일</th>	<td>${board.reg_date }	</td></tr>
			
			<tr><th>조회수</th>	<td>${board.readCount }	</td></tr>
			
			<tr><th>IP</th>		<td>${board.ip }		</td></tr>
			
			<tr><th>이메일</th>	<td>${board.email }		</td></tr>
			
			<tr><th>내용</th>		<td>${board.content }	</td></tr>
			
			<tr>
				<td colspan="2">
				<input 	type="button" 
						value="수정"
						onclick="location.href='updateForm.do?num=${board.num }&pageNum=${pageNum}'" />
				<input 	type="button" 
						value="답변작성"
						onclick="location.href='writeForm.do?num=${board.num }&pageNum=${pageNum}'" />
				<input 	type="button" 
						value="삭제"
						onclick="location.href='deleteForm.do?num=${board.num }&pageNum=${pageNum}'" />
				<input 	type="button" 
						value="목록"
						onclick="location.href='list.do?num=${board.num }&pageNum=${pageNum}'" />
				</td>
			</tr>	
		</table>
	</body>
</html>