<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function getDeptName(p_num) {
		alert("getwriterName p_num -> " + p_num);
		
		$.ajax({
			url			: "ajaxGetDeptName.do",
			data		: {num : p_num},
			dataType	: 'text',
			success		: function (data) {
							alert(".ajax Data" + data);
							/*	input Tag	*/
							$('#writerName').val(data);
							/*	span Tag	*/
							$('#msg').html(data);
							alert("getwriterName 2");
						}
		});
		
		alert("getwriterName 3");
	}
	
	
	

</script>
</head>
	<body>
		<h1>MEMBER BOARD</h1>
		<h3>Number of List : ${totCnt }</h3>
			<table>
				<tr>
					<td><a href="writeForm.do">WRITE</a></td>
				</tr>			
			</table>
			
			<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>이메일</th>
						<th>IP</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				<c:set var="numbering" value="{(currentPage-1)*10 + 1}"/>
				<c:if test="${totCnt > 0 }">
					<c:forEach var="board" items="${list }">
					<tr>
					<%--<td>${numbering }</td> --%>
						<td>${startNum}</td>
						<td class="left" width="200">
							<c:if test="${board.readCount > 20 }">
								<img src="images/hot.gif" onmouseover="getDeptName(${board.num})">
							</c:if>
							<c:if test="${board.re_level > 0 }">
								<img src="images/level.gif" width="${board.re_level * 10 }">
								<img src="images/re.gif">							
							</c:if>
							<a href="content.do?num=${board.num }&pageNum=${currentPage}">
								${board.subject }</a>
						</td>						
						<td>${board.writer }</td>
						<td><a href="mailto:${board.email}">${board.email }</a> }</td>
						<td>${board.ip }</td>
						<td>${board.reg_date }</td>
						<td>${board.readCount }</td>						
					</tr>
						<c:set var="startNum" value="${startNum - 1 }"/>
					<%--<c:set var="numbering" value="${numbering + 1 }"/> --%>
					</c:forEach>
				</c:if>
				
				<c:if test="${totCnt == 0 }">
					<tr>
						<td colspan="7">NO DATA</td>
					</tr>	
				</c:if>		
			</table>
			
			<div>
				<c:if test="${startPage > blockSize }">
					<a href="list.do?pageNum=${startPage-blockSize }">[BACK]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<a href="list.do?pageNum=${i }" >[${i }]</a>
				</c:forEach>
				<c:if test="${endPage < pageCnt }">
					<a href="list.do?pageNum=${startPage + blockSize }">[NEXT]</a>
				</c:if>		
			</div>
			
			<h3>Ajax Name of Writer : <input type="text" id="writerName" readonly="readonly"></h3>
			<h3>Message : <span id="msg"></span></h3>
		
			
						
	</body>
</html>