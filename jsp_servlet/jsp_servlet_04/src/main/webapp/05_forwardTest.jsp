<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int age = Integer.parseInt(request.getParameter("age"));
	if ( age <= 19 ) {
%>
	<script type="text/javascript">
		alert("19세 이상만 입장 가능")
		history.go(-1)
	</script>
<%
	} else {
		RequestDispatcher dispatcher = request.getRequestDispatcher("05_forwardResult.jsp");
		dispatcher.forward(request, response);
	}
%>
