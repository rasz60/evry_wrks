<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Main</title>
</head>

<body>

<%
	if(session.getAttribute("loginUser") == null ) {
		response.sendRedirect("10_loginForm.jsp");
	} else {
%>

<%= session.getAttribute("loginUser") %>님, 안녕하세요!<br />
저희 홈페이지에 방문해주셔서 감사합니다.<br />
즐거운 시간 되세요.<br />
<form action="10_logout.jsp" method="post">
	<input type="submit" value="Logout" />
</form>

<% } %>
</body>
</html>