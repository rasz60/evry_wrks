<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String age = request.getParameter("age"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Forward Result</title>
</head>

<body>

forward 방식으로 이동된 페이지 <br />
나이 : <%= age %>
</body>
</html>