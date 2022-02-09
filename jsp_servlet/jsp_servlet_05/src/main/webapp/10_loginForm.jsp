<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>LOGIN FORM</title>
</head>

<body>

<form action="10_testLogin.jsp" method="post">
	<label for="userID">아이디 : </label>
	<input type="text" name="id" id="userID" /><br />

	<label for="userPwd">암 &nbsp; 호 : </label>
	<input type="password" name="pwd" id="userPwd" /><br />
	
	<input type="submit" value="Login" />
</form>
</body>
</html>