<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getParameterValues</title>
</head>

<body>

<form action="CheckboxServlet" method="post">
	<input type="checkbox" name="item" value="신발" />신발
	<input type="checkbox" name="item" value="가방" />가방
	<input type="checkbox" name="item" value="벨트" />벨트<br />
	<input type="checkbox" name="item" value="모자" />모자
	<input type="checkbox" name="item" value="시계" />시계
	<input type="checkbox" name="item" value="쥬얼리" />쥬얼리<br />
	<input type="submit" value="완료" />
</form>
</body>
</html>