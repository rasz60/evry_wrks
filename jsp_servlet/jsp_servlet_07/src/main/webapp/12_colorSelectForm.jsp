<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL CORE IF FORM</title>
</head>

<body>

<form action="12_colorSelect.jsp">
	<label for="color">색상을 선택하세요.</label><br />
	<select name="color" id="color">
		<option value="1">빨강</option>
		<option value="2">초록</option>
		<option value="3">파랑</option>
	</select>
	<input type="submit" value="전송" />
</form>
</body>
</html>