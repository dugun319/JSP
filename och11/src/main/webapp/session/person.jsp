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
	
	#press input{
		width: 200px;
		height: 50px;
	}
</style>
</head>
	<body>
		<h1>New Member</h1>
		<form action="agree.jsp">
			<table>
				<tr>
					<th>ID</th>
					<td>
						<input type="text"		name="id"	required="required" />
					</td>				
				</tr>
				
				<tr>
					<th>PASSWORD</th>
					<td>
						<input type="password"	name="pw"	required="required" />
					</td>				
				</tr>
				
				<tr>
					<th>NAME</th>
					<td>
						<input type="text" 		name="name" required="required" />
					</td>				
				</tr>
				
				<tr id="press">
					<td colspan="5">
						<p><input type="submit" 	value="Confirm"/></p>
						<p><input type="reset" 		value="Cancel"/></p>
					</td>				
				</tr>	
			
			</table>
		</form>
	</body>
</html>