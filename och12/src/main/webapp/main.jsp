<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ include file="memberCheck.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
	<body>
		<h2>회원관리 메인 메뉴</h2>
		<div class="btn-group">
			<a href="logOut.jsp"		class="btn btn-primary active btn-lg" aria-current="page">LOGOUT</a>
			<a href="joinForm.jsp"		class="btn btn-primary btn-lg">회원가입</a>
			<a href="joinForm3.jsp"		class="btn btn-primary btn-lg">회원가입(image)</a>
			<a href="memberlist.jsp"	class="btn btn-primary btn-lg">회원명단</a>
			<a href="updateForm.jsp"	class="btn btn-primary btn-lg">회원정보수정</a>
			<a href="updateForm3.jsp"	class="btn btn-primary btn-lg">회원정보수정(image)</a>
			<a href="deleteForm.jsp"	class="btn btn-primary btn-lg">회원탈퇴</a>
		</div>
		
		<div>
			<p><img alt="회원이미지1" src="image/back2.jpg"></p>
		</div>
		<div id="footer">
			<h2>FOOTER</h2>
			<p>모든 저작권은 중앙정보처리 회사에 있습니다</p>
			<p>02-333-5555</p>
		</div>
	</body>
</html>