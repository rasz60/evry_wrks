<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>ERROR</title>
</head>
<body>

다음과 같은 에러가 발생하였습니다. <br />
<%= exception.getMessage() %>
<%= exception.getStackTrace() %>
</body>
</html>