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

<h3>status 출력</h3>
<hr />
<c:forEach var="cnt" begin="1" end="10" varStatus="status">
	${cnt}
	<c:if test="${not status.last}">, </c:if>
</c:forEach>
<br /><br />

<!-- begin/end="n" : forEach를 실행하는 index의 시작/종료 값을 n으로 설정 -->
<h3>begin/end</h3>
<hr />
<table border="1" style="width: 80%; text-align: center;">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>cnt</th>
	</tr>
	
	<c:forEach var="cnt" begin="7" end="10" varStatus="status">
		<tr>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${cnt}</td>
		</tr>
	</c:forEach>
</table>
<br /><br />

<!-- step="n" : 반복이 실행될 때마다 index 값을 n만큼 증가시킨다 -->
<h3>step</h3>
<hr />
<table border="1" style="width: 80%; text-align: center;">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>cnt</th>
	</tr>
	
	<c:forEach var="cnt" begin="1" end="10" step="2" varStatus="status">
		<tr>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${cnt}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>