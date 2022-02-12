<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL CORE URL</title>
</head>

<body>
<!-- url : 특정 url값을 사용할 때 해당 자리에 url을 출력하거나, 변수에 저장하여 쓸 수 있다. -->
<!-- c:url value="path" [var="name"] [scope="scope"] -->
<c:url value="images/pic.jpg" var="data" />
<h3> ${data} </h3>
<img src="${data}" />
</body>
</html>