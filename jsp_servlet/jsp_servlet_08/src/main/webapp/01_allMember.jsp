<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:mysql://localhost/scott?serverTimezone=UTC";
	String uid = "root";
	String upwd = "1234";
	String sql = "SELECT * FROM member";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>

<body>

<table width="800" border="1">
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>암호</th>
		<th>이메일</th>
		<th>전화번</th>
		<th>관리자</th>
	</tr>
<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upwd);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while( rs.next() ) {
			out.println(
						"<tr>" +
						"<td>" + rs.getString("name") + "</td>" +
						"<td>" + rs.getString("userid") + "</td>" +
						"<td>" + rs.getString("pwd") + "</td>" +
						"<td>" + rs.getString("email") + "</td>" +
						"<td>" + rs.getString("phone") + "</td>" +
						"<td>" + rs.getInt("admin") + "</td>" +
						"</tr>"
						);
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if( rs != null ) {
				rs.close();
			}
			
			if ( stmt != null ) {
				stmt.close();
			}
			
			if ( conn != null ) {
				conn.close();
			}
		} catch (Exception ex1) {
			ex1.printStackTrace();
		}
	}
%>
</table>
</body>
</html>