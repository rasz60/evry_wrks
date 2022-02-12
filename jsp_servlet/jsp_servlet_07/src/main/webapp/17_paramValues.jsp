<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL CORE FOREACH</title>
</head>

<body>

<h3>당신이 선택한 항목입니다.</h3>
<hr />
<!-- paramValues를 이용하여 폼에서 전달해준 여러개에 변수를 처리할 수도 있다. -->
<c:forEach var="check" items="${paramValues.item}" varStatus="status">
	${check}
	<c:if test="${not status.last}">,</c:if>
</c:forEach>
</body>
</html>