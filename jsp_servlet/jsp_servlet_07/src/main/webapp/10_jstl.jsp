<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL을 JSP에 적용시킴, prefix : uri 기능을 사용할 때 객체로 사용할 예약어 설정 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>EL과 JSTL</title>
</head>

<body>
<!-- prefix:method var="var" value="value" scope="scope" 형식을 사용 -->
<c:out value="Hello World!" />
</body>
</html>