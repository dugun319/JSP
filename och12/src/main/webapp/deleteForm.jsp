<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ include file="memberCheck.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   table {
	 background-color: aliceblue; 
   }
   tr  {
     font-size: 24 ;
   }

</style>
</head>
	<body>
		<h2>회원탈퇴를 원하시면 암호를 입력해주세요</h2>
		<form action="deletePro.jsp">
			<table border="1">
				<tr>
					<td><label for="passwd">Password : </label>
						<input  type="password" name="passwd"  required="required"></td>
				</tr>
				
				<tr><td><input type="submit" value="확인"></td></tr>	
			</table>		
		</form>
		
	</body>
</html>