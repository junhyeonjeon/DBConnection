<%@page import="com.sun.org.apache.xpath.internal.functions.Function"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- ���۹��� �����Ͱ� �ѱ��� �� ������ �ʰ� ���ڵ��� �����ش� (���޼ҵ� post) -->
<%
	request.setCharacterEncoding("EUC-KR");
%>
<%@ include file="../DBmanager/dbcon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String email = request.getParameter("email");

		//JDBC
		/*
		1. ojdbc14.jar ������ �����ؼ� WEB-INF �Ʒ��� lib������ ���̰�, �����Ϸ� �ɼǿ� ���̺귯�� �߰�.
		2. ������Ʈ - ���콺 ��Ŭ�� - - Java Build path - library �� ������ - add jar ���� ���� ojdbc14.jar ���� �����ؾ� �Ѵ�.
		(oracle express 11g ���������� ojdbc6.jar �����̴�.)
		 */

		sql = "insert into member values((select nvl(max(seq)+1,1) from member), '"
				+ userid
				+ "', '"
				+ password
				+ "', '"
				+ username
				+ "', '"
				+ email + "')";
		out.print(sql);

		try {
			//insert, update, delete
			stmt.executeUpdate(sql);

			if (stmt != null)
				stmt.close();
			if (con != null)
				con.close();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//�̺κ��� �׻� �鸮�� ������ ���⼭ ������ �����ؾ� �ȴ�.
		finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception ex) {
			}
		}
	%>
</body>
</html>
