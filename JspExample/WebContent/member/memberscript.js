function goWrite() {
	var frm = document.mform;
	// var frm = document.forms[0];
	
	if (frm.userid.value == "") {
		alert("아이디를 입력하세요");
		frm.userid.focus();
		return false;
	}

	if (frm.password.value == "") {
		alert("비밀번호를 입력하세요");
		frm.password.focus();
		return false;
	}

	if (frm.username.value == "") {
		alert("이름을 입력하세요");
		frm.username.focus();
		return false;
	}

	if (frm.email.value == "") {
		alert("메일을 입력하세요");
		frm.email.focus();
		return false;
	}
	
	frm.action = "memberproc.jsp";
	frm.submit(); // 서버로 전송

}