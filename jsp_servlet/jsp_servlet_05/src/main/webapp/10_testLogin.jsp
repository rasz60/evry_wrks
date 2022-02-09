<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = "pinksung";
	String pwd = "1234";
	String name = "성윤정";
	
	if ( id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd")) ) {
		session.setAttribute("loginUser", name);
		response.sendRedirect("10_main.jsp");
	} else {
%>
	<script>
		alert("가입되지 않은 아이디이거나 비밀번호가 잘못되었습니다.");
		location.href = "10_loginForm.jsp";
	</script>
<%	
	}
%>