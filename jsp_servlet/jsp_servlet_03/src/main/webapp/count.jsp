<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	int global_cnt = 0;
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>

<%
	int local_cnt = 0;

	out.print("<br /> local_cnt : " + (++local_cnt));
	// html 파일이 load되어 해당 스크립트릿을 실행할 때마다 새로 생성되는 로컬 변수.
	out.print("<br /> global_cnt : " + (++global_cnt));
	// 서블릿에 저장된 변수에 증가식을 추가로 실행함.
%>
</body>
</html>