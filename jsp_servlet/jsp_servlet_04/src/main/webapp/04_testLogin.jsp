<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>LoginCheck</title>
</head>

<body>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = "김진웅";
	
	if ( id.equals("rassayz60") && pwd.equals("sixxrasz60!@")) {
		response.sendRedirect("04_main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
	} else {
		response.sendRedirect("04_loginForm.jsp");
	}
	
%>
</body>
</html>