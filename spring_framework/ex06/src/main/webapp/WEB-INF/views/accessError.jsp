<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Error Page</title>
</head>

<body>

<h1>Access Denied Page</h1>
<hr />

<h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}" /></h2>
<h2><c:out value="${msg}" /></h2>
</body>
</html>