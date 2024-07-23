<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	}
	
	table {
		border-collapse: collapse ;
		border: 2px solid;
		border-radius: 10px;		
		background-color : aliceblue;
	}
</style>
<script type="text/javascript">
	function chk() {
		if(frm.passwd.value != frm.passwd2.value){
			alert("암호가 일치하지 않습니다");
			frm.password2.focus();
			return false;
		}
		
		return true;
	}
	
	/* 	새로 열릴 참의 속성 또는 창의 이름을 지정(target="_blank") 
    선택적인 값으로 기본값은 "_blank" . 사용 가능한 값을 다음과 같습니다.
	- _blank : 새 창에 열립니다. 이것이 기본값입니다.
	- _parent : 부모 프레임에 열립니다.
	- _self : 현재 페이지를 대체합니다.
	- _top : 로드된 프레임셋을 대체합니다.
	- name(임의의 이름) : 새 창이 열리고 창의 이름을 지정합니다. 동일한 이름에 다시 open() 을 하면 기존의 열린창의 내용이 바뀝니다. 
	              다른 이름을 사용하면 또다른 새창이 열립니다
	              
	  var popup = window.open(url, name, option);
	  var popup = window.open('팝업주소', '팝업창 이름', '팝업창 설정');
    */
	
	function winop() {
		if(!frm.id.value){
			alert("id를 입력하고 사용하세요");
			frm.id.focus();
			return false;
		}
		window.open("confirmID.jsp?id=" + frm.id.value, "Pop-up Name", "width=300 height=300");
	}


</script>
</head>
	<body>
		<h2>회원가입</h2>
		<form action="joinPro.jsp"	name="frm" 	onsubmit="return chk()">
			<table>
				<tr>
					<th>아이디</th>
					<td><input	type="text" 	name="id" 			required="required"/>
						<input	type="button" 	value="ID Check" 	onclick="winop()"/>
					</td>					
				</tr>
				
				<tr>
					<th>Password</th>
					<td><input	type="password" 	name="passwd" 	required="required"/></td>					
				</tr>
				
				<tr>
					<th>Password Check</th>
					<td><input	type="password" 	name="passwd2" 	required="required"/></td>					
				</tr>
				
				<tr>
					<th>Name</th>
					<td><input	type="text" 	name="name" 	required="required"/></td>					
				</tr>
				
				<tr>
					<th>Address</th>
					<td><input	type="text" 	name="address" 	required="required"/></td>					
				</tr>
				
				<tr>
					<th>Cellular phone</th>
					<td><input	type="tel" 	name="tel" 	required="required"
								pattern="\d{2, 3} - \d{3, 4} - \d{4}"
								placeholder="010-xxxx-xxxx"
								title="2,3자리 - 3,4자리 - 4자리"/>
					</td>					
				</tr>
				
				<tr>
					<td><input	type="submit" 	value="Confirm"/></td>
					<td><input	type="reset" 	value="Cancel" /></td>					
				</tr>
						
			</table>		
		</form>
	</body>
</html>