<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Forward Form</title>
</head>

<body>

입장하려면 나이를 입력하세요.<br />
<form action="05_forwardTest.jsp" method="post">
	나이 : <input type="text" name="age" />
	<input type="submit" value="입장" />
</form>
</body>
</html>