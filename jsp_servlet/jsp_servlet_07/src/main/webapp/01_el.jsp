<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>EL과 JSTL</title>
</head>

<body>

<!-- 표현 언어 EL(Expression Language)로 출력 -->
${"Hello"}<br />

<!-- 표현식 (Expression)으로 출력 -->
<%= "Hello" %><br />

<!-- 스크립트릿으로 출력 -->
<% out.println("Hello"); %> <br />
</body>
</html>