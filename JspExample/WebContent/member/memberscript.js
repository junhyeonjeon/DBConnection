function goWrite() {
	var frm = document.mform;
	// var frm = document.forms[0];
	
	if (frm.userid.value == "") {
		alert("���̵� �Է��ϼ���");
		frm.userid.focus();
		return false;
	}

	if (frm.password.value == "") {
		alert("��й�ȣ�� �Է��ϼ���");
		frm.password.focus();
		return false;
	}

	if (frm.username.value == "") {
		alert("�̸��� �Է��ϼ���");
		frm.username.focus();
		return false;
	}

	if (frm.email.value == "") {
		alert("������ �Է��ϼ���");
		frm.email.focus();
		return false;
	}
	
	frm.action = "memberproc.jsp";
	frm.submit(); // ������ ����

}