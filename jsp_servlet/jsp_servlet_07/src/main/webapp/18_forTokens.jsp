<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL CORE FORTOKENS</title>
</head>

<body>
<!-- forTokens : items = 구분자로 구분될 문자열 지정 / delims = items 문자열을 잘라낼 구분자 지정 -->
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
	${city}<br />
</c:forTokens>
<hr />

<!-- delims를 여러 개 주려면 나열하여 적으면 된다. -->
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
	${city}<br />
</c:forTokens>
</body>
</html>