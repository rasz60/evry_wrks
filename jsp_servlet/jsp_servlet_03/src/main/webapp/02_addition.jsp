<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>addition</title>
</head>

<body>
<p>
<%
	int num1 = 20;
	int num2 = 10;
	int add = num1 + num2;
	
	out.print(num1 + " + " + num2 + " = " + add);

%>
</p>
</body>
</html>