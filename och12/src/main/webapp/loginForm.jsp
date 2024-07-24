<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th {
		width: 100px;
		border: 1px solid;
		padding: 10px;
		text-align: center;
		border-radius: 15px;
	}
	
	td {
		width: 250px;
		padding: 10px;
		border: 1px solid;
		text-align: center;
		border-radius: 15px;
	}
	
	table {
		border: 5px solid;
		border-color: navy;
		border-radius: 10px;		
		background-color : aliceblue;
		border-radius: 15px;
	}
	
	td:hover {
		background-color : paleturquoise;
	}
	
	input {
		width: 200px;
		height: 30px;
		border-radius: 15px;
	}
	
	#IB {
		width: 150px;
		height: 50px;
		border-radius: 10px;	
	}
</style>
</head>
<body>
  <h2>로그인</h2>
  <form action="loginPro.jsp" method="post">
	<table border="1">
		<tr><th>아이디</th><td><input type="text"     name="id"      required="required"></td></tr>
		<tr><th>암호</th><td><input  type="password" name="passwd"  required="required"></td></tr>
		<tr><th colspan="5"><input type="submit" value="Confirm" id="IB"/>
							<input type="reset"  value="Cancel" id="IB"/></th>
		</tr>	
	</table>
  </form><p>

</body>
</html>




