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

<% request.setCharacterEncoding("UTF-8"); %>
이름 : <%= request.getParameter("name") %>
</body>
</html>