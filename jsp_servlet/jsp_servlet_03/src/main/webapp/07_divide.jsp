<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 에러가 발생하면 보여줄 페이지로 error.jsp 지정 --%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSP divide</title>
</head>
<body>

<%-- 강제로 에러 발생시키기 위한 메서드 --%>
<%= 2/0 %>
</body>
</html>