<%@ page language="java" import="java.sql.*"%>
<%
	//������ �ּҿ� DB �ּҸ� �ִ´�.
	String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	// SID ã�� ����� ����Ŭ TNS���������� ���� Service Name, SID ������ �� �ִ�. 
	// �Ǵ� Sys �������� �α��� �Ͽ� select name from v$database; ������ ������ ���´�.
	String DB_USER = "scott"; // DB USER��
	String DB_PASSWORD = "tiger"; // �н�����

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