<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>EL과 JSTL</title>
</head>

<body>

<form action="04_testLogin.jsp" method="get">
	<label for="userid">아이디 : </label>
	<input type="text" name="id" id="userid" /><br />
	
	<label for="userpwd">암 &nbsp; 호 : </label>
	<input type="password" name="pwd" id="userpwd" /><br />
	
	<input type="submit" value="login" />
</form>
</body>
</html>