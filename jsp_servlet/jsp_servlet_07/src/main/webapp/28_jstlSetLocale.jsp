<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL SET LOCALE</title>
</head>

<body>

<%--
  -- <fmt:setLocale value="국가언어코드_국가코드" />
 --%>

<c:set var="now" value="<%= new java.util.Date()%>"/>

톰캣 서버의 기본 로케일 : <%= response.getLocale() %><br />
통화(currency) : <fmt:formatNumber value="10000" type="currency" /><br />
날짜			  : <fmt:formatDate value="${now}"/><br /><br />

<fmt:setLocale value="en_US" />
로케일 미국(en_US)으로 설정 : <%= response.getLocale() %><br />
통화(currency) : <fmt:formatNumber value="10000" type="currency" /><br />
날짜			  : <fmt:formatDate value="${now}"/>
</body>
</html>