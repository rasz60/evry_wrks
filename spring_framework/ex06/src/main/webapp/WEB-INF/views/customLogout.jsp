<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Logout</title>
</head>

<body>

<h1>Logout Page</h1>
<hr />

<form action="/customLogout" method="post">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	<button>로그아웃</button>
</form>
</body>
</html>