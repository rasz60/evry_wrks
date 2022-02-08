<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>SUB INCLUDE PAGE</title>
</head>

<body>

<jsp:include page="10_header.jsp"></jsp:include>
서브 화면입니다.<br />
<a href="10_main.jsp">메인 페이지로 되돌아가기</a>
<jsp:include page="10_footer.jsp"></jsp:include>
</body>
</html>