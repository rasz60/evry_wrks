function check() {
	if ( document.form.id.value == "" ) {
		alert("id를 입력해주세요.");
		document.form.id.focus();
		return false;
	} else if ( document.form.age.value == "" ) {
		alert("age를 입력해주세요.");
		document.form.age.focus();
		return false;
	} else if ( isNaN(document.form.age.value) ) {
		alert("age는 숫자만 입력해주세요.");
		document.form.age.focus();
		return false;
	} else {
		return true;
	}
};