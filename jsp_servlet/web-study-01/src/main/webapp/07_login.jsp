<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
</head>

<body>

<form action="LoginServlet" method="get">
	<label for="userid">아이디 : </label>
	<input type="text" name="id" id="userid" /><br />
	
	<label for="userpwd">비밀번호 : </label>
	<input type="password" name="pwd" class="userpwd" /><br />
	
	<input type="submit" value="Login" />
</form>

<form action="LoginServlet" method="post">
	<label for="userid">아이디 : </label>
	<input type="text" name="id" id="userid" /><br />
	
	<label for="userpwd">비밀번호 : </label>
	<input type="password" name="pwd" class="userpwd" /><br />
	
	<input type="submit" value="Login" />
</form>

</body>
</html>