<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Cookie &amp; Session</title>
</head>

<body>

<%
	Cookie c = new Cookie("id", "rassayz60");

	//setMaxAge("sec") : 쿠키의 유효기간을 설정 (초단위)
	c.setMaxAge(365*24*60*60);
	
	response.addCookie(c);
	response.addCookie(new Cookie("pwd", "test1234"));
	response.addCookie(new Cookie("age", "20"));
%>
<h3>쿠키 설정</h3>
</body>
</html>