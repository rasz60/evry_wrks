<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Cookie &amp; Session</title>
</head>

<body>

<h3>세션 값 얻어오기</h3>
<%
	/* 
	*	getAttribute() : session에 저장된 Attribute name으로 value를 가져오는 메서드로 return값이 object type이기 때문에 알맞은 형변환 필요
	*	서블릿에서는 HttpServletRequest의 객체를 생성하여 getSession() 메서드로 session객체를 가져와서 사용한다.
	*	ex > HttpSession session = request.getSession();
	*/
	String id = (String)session.getAttribute("id");
	String pwd = (String)session.getAttribute("pwd");
	Integer age = (Integer)session.getAttribute("age");
%>

id : <%= id %> <br />
password : <%= pwd %> <br />
age : <%= age %> <br />
</body>
</html>