<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Cookie &amp; Session</title>
</head>

<body>

<h3>세션 정보를 얻어오는 메소드를 이용하기</h3>
<%
	String idStr = session.getId();
	long lastTime = session.getLastAccessedTime();
	long creatTime = session.getCreationTime();
	long timeUsed = (lastTime - creatTime) / 60000;
	int inactive = session.getMaxInactiveInterval() / 60;
	boolean isNew = session.isNew();
%>
[1] 세션 ID는 [ <%= idStr%> ]입니다.<br /><hr />
[2] 당신이 웹 사이트에 머문 시간은 [ <%= timeUsed%> ]분입니다.<br /><hr />
[3] 세션의 유효시간은 [ <%= inactive%> ]분입니다.<br /><hr />
[4] 세션은 새로 만들어졌나요? [

<%
	if ( isNew ) {
		out.print("	예! 새로운 세션을 만들었습니다. ]");
	} else {
		out.print(" 아니오! 새로운 세션을 만들지 않았습니다. ]");
	}
%>
<hr />
</body>
</html>