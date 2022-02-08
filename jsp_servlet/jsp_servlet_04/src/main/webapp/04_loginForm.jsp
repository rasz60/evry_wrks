<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>LoginForm</title>
</head>

<body>

<form action="04_testLogin.jsp" method="post">
	<label for="id"> 아 이 디 : </label>
	<input type="text" name="id" id="id" /><br/>
	<label for="pwd">비밀번호 : </label>
	<input type="password" name="pwd" id="pwd" /><br/>
	<input type="submit" value="login" />
</form>
</body>
</html>