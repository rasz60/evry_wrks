<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>ThirdPage</title>
</head>
<body>

하나의 페이지 속성 : <%= pageContext.getAttribute("name") %> <br/>
하나의 리퀘스트 속성 : <%= request.getAttribute("name") %> <br/>
하나의 세션 속성 : <%= session.getAttribute("name") %> <br/>
하나의 어플리케이션 속성 : <%= application.getAttribute("name") %> <br/>
</body>
</html>