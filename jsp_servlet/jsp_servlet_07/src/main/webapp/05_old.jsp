<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>EL과 JSTL</title>
</head>

<body>

자바 코드<br />
== 연산 사용 결과 : <%= request.getParameter("id") == "pinksung" %> <br />
equals() 사용 결과 : <%= request.getParameter("id").equals("pinksung") %> <br />
</body>
</html>