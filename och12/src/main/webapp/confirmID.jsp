<%@page import="och12.MemberDao"%>
<%@page import="och12.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String id = request.getParameter("id");
%>
<script type="text/javascript">
	function wincl() {
		opener.document.frm.id.value = "<%=id %>";
		window.close();		
	}

</script>
</head>
	<body>
		<%
			MemberDao md 	= MemberDao.getInstance();
			int result 		= md.confirm(id);
			if(result ==0){
		%>
			<p><%=id %> (은)는 사용할 수 있습니다</p>
			<input type="button" value="CLOSE" onclick="wincl()"/>
		<%
			}else{		
		%>
			<h4><%=id %> (은)는 다른 사용자가 이용중이니 다른 아이디를 입력하십시오.</h4>
			<form>
				<p>ID : <input type="text" 		name="id"/></p>
						<input type="submit"	value="Confirm">
			
			</form>
		<%
			}
		%>
	</body>
</html>