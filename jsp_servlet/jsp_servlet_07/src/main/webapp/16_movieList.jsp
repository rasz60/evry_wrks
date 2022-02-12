<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL CORE FOREACH</title>
</head>

<body>

<%
	String[] movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
	pageContext.setAttribute("movieList", movieList);
%>

<h3>forEach varStatus first/last</h3>
<hr />
<ul>
	<!-- varStatus.first : count가 1인지 확인해서 true/false로 반환 -->
	<c:forEach var="movie" items="${movieList}" varStatus="status">
		<c:choose>
			<c:when test="${status.first }">
				<li style="font-weight: bold; color: red;">${movie}</li>
			</c:when>
			<c:otherwise>
				<li>${movie}</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>

<!-- varStatus.last : 마지막번째 count인지 확인해서 true/false로 반환 -->
<c:forEach var="movie" items="${movieList}" varStatus="status">
	${movie}
	<c:if test="${status.last != true}">,</c:if>
</c:forEach>
</body>
</html>