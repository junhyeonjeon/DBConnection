<%@page import="com.sun.org.apache.xpath.internal.functions.Function"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- 전송받은 데이터가 한글일 때 깨지지 않게 인코딩을 맞춰준다 (폼메소드 post) -->
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
		1. ojdbc14.jar 파일을 복사해서 WEB-INF 아래에 lib폴더에 붙이고, 컴파일러 옵션에 라이브러리 추가.
		2. 프로젝트 - 마우스 우클릭 - - Java Build path - library 탭 누르고 - add jar 누른 다음 ojdbc14.jar 파일 선택해야 한다.
		(oracle express 11g 버전에서는 ojdbc6.jar 파일이다.)
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
		//이부분은 항상 들리기 때문에 여기서 연결을 종료해야 된다.
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
