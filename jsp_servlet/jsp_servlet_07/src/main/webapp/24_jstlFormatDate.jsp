<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL FORMATDATE</title>
</head>

<body>
<%--
  -- <fmt:formatDate value="date"
  					[type="{ time | date | both }]
  					[dateStyle="{ default | short | medium | long | full }"]
  					[timeStyle="{ default | short | medium | long | full }"]
  					[pattern="customPattern"]
  					[timeZone="timeZone"]
  					[var="varName"]
  					[scope="scope"]
 --%>

<c:set var="now" value="<%= new java.util.Date()%>" /> 
<h3>Date 클래스 객체 기본형 출력</h3>
\${now} = ${now}
<hr />

<h3>formatDate 기본형 / date / time / both 출력</h3>
default : <fmt:formatDate value="${now}" /><br />
type="date" : <fmt:formatDate value="${now}" type="date" /><br />
type="time" : <fmt:formatDate value="${now}" type="time" /><br />
type="both" : <fmt:formatDate value="${now}" type="both" /><br />
<hr />

<h3>dateStyle/timeStyle</h3>
default : <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/><br />
short : <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short" /><br />
medium : <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium" /><br />
long : <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long" /><br />
full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br />
<hr />

<h3>pattern</h3>
pattern="yyyy년 MM월 dd일 hh시 mm분 ss초" : <br />
<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"/><br />
<hr />

</body>
</html>