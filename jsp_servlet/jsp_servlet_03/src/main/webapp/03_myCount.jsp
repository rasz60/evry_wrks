<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Count</title>
</head>

<body>

<%
	int count = 0;
	out.print("count : ");
	out.println(++count);
%>
</body>
</html>