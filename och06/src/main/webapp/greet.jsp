<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%!		//선언부 : member values, methods  -> init()
		private PrintWriter pw;
		String date;
		String date_TF;
		String date_TT;
		
		public void jspInit() {
			System.out.println("Today is Greet's birthday!");
			GregorianCalendar gc = new GregorianCalendar();
			date = String.format("%TF %TT", gc, gc);
			date_TF = String.format("%TF", gc);
			date_TT = String.format("%TT", gc);
			String fileName = "c:/log/ " + date.replaceAll(":", "") + ".txt";
			
			try {
				pw = new PrintWriter(new FileWriter(fileName, true));
			} catch (Exception e){
				System.out.println("WOW! hut");				
			}
		}
				
		%>
		
		<%		// doGet or doPost
		System.out.println("Today is Greet's Present!");
		String name = request.getParameter("name");
		String msg	= name + " 님 반갑습니다</p><p>";
		
		//Browser
		out.println("<p>" + msg + "Current Time : " + date + "</p>");
		out.println("<p>Current TF_Time : " + date_TF + "</p>");
		out.println("<p>Current TT_Time : " + date_TT + "</p>");
		
		//File
		pw.println(msg + "\r\n Current Time : " + date + "\r\n");
		
		%>
		
		<%!		//선언부 : member values, methods  -> destroy()
		public void jspDestroy() {
			System.out.println("Today is Greet's Funeral");
			pw.flush();
			if(pw != null) {
				pw.close();
			}
		}
		%>
	</body>
</html>