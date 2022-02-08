<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>ResearchReport</title>
</head>

<body>

<h2>설문 조사 결과</h2>
<hr />

<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	out.println("이름 : <b>" + name + "</b><br/>");
	
	String gender = request.getParameter("gender");
	out.println("성별 : <b>" + gender + "</b><br/>");
		
	String[] season = request.getParameterValues("season");
	out.print("계절 : ");
	if ( season == null ) {
		out.print("계절을 선택하지 않았습니다.");
	} else {
		for( int i = 0; i < season.length; i++ ) {
			out.print(season[i] + " | ");
		}
	}
	
%>

<br />
<a href='javascript:history.go(-1)'>다시 입력</a>

</body>
</html>