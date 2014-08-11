<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- script -->
<script src="./memberscript.js" type="text/javascript"></script>
</head>
<body>
	<!-- 파일명 : /member/memberform.jsp -->
	<form name="mform" method="post" action="">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td width="30%">아이디</td>
				<td width="+"><input type="text" name="userid"></td>
			</tr>
			<tr>
				<td width="30%">패스워드</td>
				<td width="+"><input type="password" name="password"></td>
			</tr>
			<tr>
				<td width="30%">이름</td>
				<td width="+"><input type="text" name="username"></td>
			</tr>
			<tr>
				<td width="30%">이메일</td>
				<td width="+"><input type="email" name="email"></td>
			</tr>
		</table>
		<br> <input type="button" value="회원가입" onclick="goWrite()">
	</form>
</body>
</html>