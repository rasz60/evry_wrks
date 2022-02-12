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
<!-- varStatus="name" : forEach의 실행 상태를 저장하는 변수 생성 -->
<h3>forEach varStatus index/count</h3>
<hr />
<table border="1" style="width: 80%; text-align: center;">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>title</th>
	</tr>
	<!-- varStatus.index : 현재 반복문이 진행되고 있는 배열의 인덱스 반환 -->
	<!-- varStatus.count : 현재 반복문이 몇 번째 진행되고 있는지를 반환 -->
	<c:forEach var="movie" items="${movieList}" varStatus="status">
	<tr>
		<td>${status.index}</td>
		<td>${status.count}</td>
		<td>${movie}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>