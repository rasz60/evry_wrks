<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSP COMMENT</title>
</head>
<body>

<!-- 간단한 인삿말 출력하기 -->
<%-- 인삿말을 String 변수에 저장한다. --%>

<% 
	// jsp 파일에서 html comment를 작성하면 브라우저 source로 출력됨 
	String name = "Angel"; 
%>
Hello <%= name %>
</body>
</html>