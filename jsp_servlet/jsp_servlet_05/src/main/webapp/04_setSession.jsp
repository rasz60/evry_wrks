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
	/*
	*	session : 브라우저 당 하나씩 존재하는 객체로 jsp에서는 내장객체로 제공
	* 	cookie 형태의 객체이므로, 같은 형태로 데이터를 저장 ("name", "value")
	* 	데이터의 제한이 없음(용량, 개수) / jsp서버에서만 접근 가능
	*/
	session.setAttribute("id", "pinksung");
	session.setAttribute("pwd", "test1234");
	session.setAttribute("age", 20);
%>

<h3>세션 설정</h3>
</body>
</html>