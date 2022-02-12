<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL REQUEST ENCODING</title>
</head>

<body>

<h3>post 방식에서 한글 깨짐 방지</h3>
<form action="30_jstlFmt.jsp" method="post">
	이름 : <input type="text" name="name" />
	<input type="submit" value="전송" />
</form>
</body>
</html>