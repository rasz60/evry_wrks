<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Params</title>
<script>
function check() {	
	if( document.frm.id.value == "" ) {
		alert("아이디를 입력해주세요.");
		document.frm.id.focus();
		return false;
	} else if( document.frm.age.value == "" ) {
		alert("나이를 입력해주세요.");
		document.frm.age.focus();
		return false;
	} else if( isNaN(document.frm.age.value) ) {
		alert("나이를 숫자로 입력해주세요.");
		document.frm.age.focus();
		return false;
	} else {
		return true;
	}
}
</script>
</head>

<body>

<form action="ParamServlet" method="get" name="frm">
	아이디 : <input type="text" name="id" />
	나 이 : <input type="text" name="age"/>
	<input type="submit" value="Submit" onclick="return check()" />
</form>

</body>
</html>