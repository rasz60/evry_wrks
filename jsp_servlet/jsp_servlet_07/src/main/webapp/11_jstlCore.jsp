<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL CORE</title>
</head>

<body>
<c:set var="msg" value="Hello" />
\${msg} = ${msg} <br />
<c:set var="age">30</c:set>
\${age} = ${age} <hr />

<!-- 
 1-- value 경로의 클래스의 new 메서드로 객체를 생성하여 변수 member에 저장
 2-- target : set할 객체명 / property : 객체의 속성 이름 / value : 해당 이름의 속성 값
-->
<c:set var="member" value="<%= new com.saeyan.javabeans.MemberBean() %>" />
<c:set target="${member}" property="name" value="전수빈" />
<c:set target="${member}" property="userid">pinksubin</c:set>
\${member} = ${member}<hr />

<c:set var="add" value="${10 + 5}" />
\${add} = ${add} <br />
<c:set var="flag" value="${10 > 5}" />
\${flag} = ${flag} <br />

<c:remove var="age" />
\${age} = ${age} <hr />
</body>
</html>