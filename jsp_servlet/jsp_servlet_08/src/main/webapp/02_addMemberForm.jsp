<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
<title>JDBC FORM</title>
</head>

<body>

<h2>회원 정보 입력 폼</h2>
<hr />

<form action="02_addMember.jsp" method="post">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" size="20" /></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userid" size="20" /></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" size="20" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" size="20" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone" size="11" /></td>
		</tr>
		<tr>
			<td>등급</td>
			<td>
				<input type="radio" name="admin" value="0" checked="checked" />관리자<br />
				<input type="radio" name="admin" value="1" />사용자
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="전송" /></td>
			<td><input type="reset" value="취소" /></td>
		</tr>
	</table>
</form>
</body>
</html>