<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Cookie &amp; Session</title>
</head>

<body>

<h3>클라이언트로부터 얻어온 Cookie</h3>
<%
	Cookie[] cookies = request.getCookies();
	int i = 1;
	for(Cookie c : cookies) {
		out.println(i++ + ". " + c.getName() + " : " + c.getValue() + "<br />");
	}
%>
</body>
</html>