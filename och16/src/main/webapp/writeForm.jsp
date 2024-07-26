<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
	<body>
		<h2>NEW WRITE</h2>
		<form action="writePro.do?pageNum=${pageNum }" method="post">
			<input type="hidden" name="num" 		value="${num }"/>		
			<input type="hidden" name="ref" 		value="${ref }"/>
			<input type="hidden" name="re_level" 	value="${re_level }"/>
			<input type="hidden" name="re_step" 	value="${re_step }"/>
			<table>
				<tr>
					<th>번호</th>	 
					<td>${num }	<input type="hidden"	name="num"	value="${num }"/></td>
				</tr>
				
				<tr>
					<th>제목</th>
					<td>
						<c:if test="${num > 0 }">
							<input type="text" name="subject" value="[답변]" required="required"/>
						</c:if>
						<c:if test="${num == 0 }">
							<input type="text" name="subject" required="required"/>
						</c:if>
					</td>	 
				</tr>
				
				<tr>
					<th>작성자</th>
					<td>		<input type="text" 		name="writer" 	required="required"/></td>
				</tr>
				
				<tr>
					<th>이메일</th>
					<td>		<input type="text" 		name="email" 	required="required"/></td>
				</tr>
				
				<tr>
					<th>내용</th>	
					<td>		<textarea name="content"	cols="45" rows="20" required="required"></textarea></td>
				</tr>
				
				<tr>
					<th>암호</th>
					<td>		<input type="password" 	name="passwd" 	required="required"/></td>
				</tr>	
				
				
				<tr>
					<td colspan="5">
						<input 	type="submit" value="confirm"/>
						<input 	type="reset"  value="Retry"/>
					</td>
				</tr>		
			</table>
		</form>
	</body>
</html>