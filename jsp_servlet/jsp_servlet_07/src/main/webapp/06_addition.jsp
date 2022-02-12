<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>EL과 JSTL</title>
</head>

<body>

고전적인 방식<hr />
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
%>

<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <hr />

EL 방식<hr />
${param.num1} + ${param.num2} = ${param.num1 + param.num2}
</body>
</html>