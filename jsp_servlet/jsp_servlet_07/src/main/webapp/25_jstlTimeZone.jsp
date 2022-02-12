<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL TIMEZONE</title>
</head>

<body>


<%--
  -- <fmt:setTimeZone value="timeZone"
  --				 [var="varName"]
  --				 [scope="scope"]
  -- />
  
  -- <fmt:timeZone value="timeZone"> : 특정 지역 시간으로 세팅
  -- <fmt:formatDate value="Date" /> : Date객체를 출력하면 특정 지역 시간으로 출력
  -- </fmt:timeZone>
--%>

default : <c:out value="${now}" /> <br /><br />
KOREA KST : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <br /><br />

<fmt:timeZone value="GMT">
Swiss GMT : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <br /><br />
</fmt:timeZone>

<fmt:timeZone value="GMT-8">
New York GMT-8 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <br /><br />
</fmt:timeZone>
</body>
</html>