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
<title>회원 가입</title>
<script type="text/javascript" src="script/member.js"></script>
</head>

<body>

<h2>회원 가입</h2>
<hr />
'*' 표시 항목은 필수 입력 항목입니다.
<form action="join.do" method="post" name="frm">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" size="20" /></td>
		</tr>
		<tr>
			<td>아이다</td>
			<td>
				<input type="text" name="userid" size="20" />
				<input type="hidden" name="reid" size="20" />
				<input type="button" value="중복체크" onclick="idCheck()" />
			</td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="password" name="pwd" size="20" />*</td>
		</tr>
		<tr height="30">
			<td width="80">암호 확인</td>
			<td><input type="password" name="pwdCheck" size="20" />*</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" size="20" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone" size="20" />*</td>
		</tr>
		<tr>
			<td>관리자 여부</td>
			<td>
				<input type="radio" name="admin" value="1"/>관리자
				<input type="radio" name="admin" value="0" checked="checked"/>일반회원
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="확인" onclick="return joinCheck()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소" />
			</td>
		</tr>
		<tr>
			<td colspan="2">${message}</td>
		</tr>
	</table>
</form>
</body>
</html>