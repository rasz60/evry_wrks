<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	  integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	  crossorigin="anonymous"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>ID 중복 체크</title>
<script type="text/javascript" src="script/member.js"></script>
</head>

<body>

<h2>아이디 중복 확인</h2>
<hr />

<form action="idCheck.do" method="get" name="frm">
	아이디 <input type="text" name="userid" value="${userid}" />
	<input type="submit" name="중복확인" />
	<br />
	
	<c:if test="${result == 1}">
		<script type="text/javascript">
			opener.document.frm.userid.value="";
		</script>
		${userid}는 사용 중인 아이디입니다.
	</c:if>
	<c:if test="${result == -1}">
		${userid}는 사용 가능한 아이디입니다.
		<input type="button" value="사용" class="cancel" onclick="idOk()" />
	</c:if>
	
</form>
</body>
</html>