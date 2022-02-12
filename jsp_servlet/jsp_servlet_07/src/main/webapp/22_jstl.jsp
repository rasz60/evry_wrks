<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL OUT / CATCH</title>
</head>

<body>

<c:set var="age" value="30" scope="page"/>

<!-- c:out value="value" default="d_value" -->
<!-- jstl의 출력 기능이지만 주로 EL문을 사용한다. request된 값이 null일 때, 기본으로 출력될 default값을 줄 수 있다. -->
나이 : <c:out value="${age}" default="10" /><br />

<c:remove var="age" />
나이 : <c:out value="${age}" default="10" /><br />

<!-- c:catch var="name" : catch 블럭 안에 수행문에서 예외발생하면 예외 내용을 변수로 저장한다. 블럭안에 예외가 발생한 이 후 문장은 수행되지 않는다. -->
<c:catch var="errmsg">
	예외 발생 전<br />
	<%= 1/0 %><br />
	예외 발생 후
</c:catch>

${errmsg}
</body>
</html>