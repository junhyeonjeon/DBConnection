<%@ page language="java" import="java.sql.*"%>
<%
	//아이피 주소에 DB 주소를 넣는다.
	String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	// SID 찾는 방법은 오라클 TNS설정파일을 보면 Service Name, SID 등으로 써 있다. 
	// 또는 Sys 계정으로 로그인 하여 select name from v$database; 쿼리를 날려도 나온다.
	String DB_USER = "scott"; // DB USER명
	String DB_PASSWORD = "tiger"; // 패스워드

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = null;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		stmt = con.createStatement();
	} catch (SQLException e) {
		out.println(e);
	}
%>