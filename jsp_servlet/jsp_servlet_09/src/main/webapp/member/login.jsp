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
<title>로그인 페이지</title>
<script type="text/javascript" src="script/member.js"></script>
</head>

<body>

<div class="container border p-2">
	<h2>로그인</h2>
	<hr />
	<form action="login.do" method="post" name="frm">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid" value="${userid}" /></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input type="password" name="pwd" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="로그인" class="btn btn-primary" onclick="return loginCheck()" />&nbsp;&nbsp;
					<input type="reset" value="취소" class="btn btn-danger" />&nbsp;&nbsp;
					<input type="button" value="회원가입" onclick="location.href='join.do'" class="btn btn-success" />&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td colspan="2">${message}</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>