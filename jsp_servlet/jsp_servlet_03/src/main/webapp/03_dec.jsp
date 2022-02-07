<%-- 
	<%@ %> : jsp 파일의 속성을 지정해주는 선언부
	<%! %> : jsp 서블릿 클래스에 변수, 메서드를 선언하는 선언부, 선언만 가능하고 출력은 스크립트릿에서 실행
	<% %> : _jspService() 서블릿에 있는 메서드에서 실행됨
	<%= %> : jsp를 실행한 결과값을 출력함
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%!
	String str = "안녕하세요!";
	int a = 5, b = -5;
	
	public int abs(int n) {
		if ( n < 0 ) {
			n = -n;
		}
		return n;
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>dec</title>
</head>

<body>
<%
	out.print(str + "<br />");
	out.print(a + "의 절대값 : " + abs(a) + "<br />");
	out.print(b + "의 절대값 : " + abs(b) + "<br />");
%>
</body>
</html>