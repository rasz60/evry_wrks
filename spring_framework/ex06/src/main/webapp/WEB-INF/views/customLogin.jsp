<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Login Page</title>
</head>

<body>
<h1>Custom Login Page</h1>
<h2><c:out value="${error }" /></h2>
<h2><c:out value="${logout }"/></h2>

<form action="/login" method="post">
	<div>
		<input type="text" name="username" value="admin"/>
	</div>
	
	<div>
		<input type="password" name="password" value="admin"/>
	</div>
	<div>
		<input type="checkbox" name="remember-me" > Remember me
	</div>
	
	<div>
		<input type="submit" />
	</div>
	
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
</form>
</body>
</html>