<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
</head>
<body>

<form action="RadioServlet" method="get">
	<label for="gender">성별 : </label>
	<input type="radio" name="gender" id="gender" value="남자" checked/>남자
	<input type="radio" name="gender" id="gender" value="여자"/>여자
	<br /><br />
	
	<label for="chkMail">메일 정보 수신 여부 : </label>
	<input type="radio" name="chkMail" id="chkMail" value="yes" checked/>동의
	<input type="radio" name="chkMail" id="chkMail" value="no"/>거부
	<br /><br />
	
	<label for="content">가입인사 : </label> <br />
	<textarea id="content" name="content" rows="3" cols="35"></textarea> <br />
	<input type="submit" value="완료" />
</form>
</body>
</html>