<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Params</title>
<script type="text/javascript" src="resources/js/script.js"></script>
</head>
<body>

<form action="ParamServlet" method="get" name="form">
	ID : <input type="text" name="id"/> <br />
	age : <input type="text" name="age"/> <br />
	<input type="submit" value="Submit" onclick="return check()"/>
</form>

</body>
</html>