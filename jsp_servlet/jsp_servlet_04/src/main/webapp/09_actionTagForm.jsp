<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>ACTION TAG</title>
</head>

<body>

<form action="09_actionTagTest.jsp" method="post">
	아이디 : <input type="text" name="id"/><br/>
	암 &nbsp; 호 : <input type="password" name="pwd" /><br/>
	<input type="radio" name="loginCheck" value="user" checked="checked"/>사용자
	<input type="radio" name="loginCheck" value="admin" />관리자
	<input type="submit" value="login" />
</form>
</body>
</html>