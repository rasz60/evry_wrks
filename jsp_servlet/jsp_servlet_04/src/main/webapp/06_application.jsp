<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSP Application Method</title>
</head>

<body>

<%
	String appPath = application.getContextPath();
	String filePath = application.getRealPath("06_application.jsp");
	String MIMEType = application.getMimeType("06_application.jsp");
%>

웹 어플리케이션의 컨택스트 패스명<br />
<hr />
<b><%= appPath%></b>
<hr />
웹 어플리케이션의 파일 경로명<br />
<hr />
<b><%= filePath%></b>
<hr />
웹 어플리케이션의 MIME TYPE<br />
<hr />
<b><%= MIMEType%></b>
<hr />
</body>
</html>