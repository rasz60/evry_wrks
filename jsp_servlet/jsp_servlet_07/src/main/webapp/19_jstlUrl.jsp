<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>JSTL CORE IMPORT</title>
</head>

<body>
<!-- 
  -- import : 페이지 내에 다른 페이지(url)를 포함시킨다.
  -- 변수명을 생략하면 import문이 있는 자리에 페이지가 표시되고, 변수명을 지정하면 EL문으로 출력한 자리에 표시된다.
 -->
<!-- c:import url="url" [var="페이지를 저장할 변수명"] [scope=""] [charEncording="charset"] -->
<c:import url="http://localhost:8181/jsp_servlet_07/02_el.jsp" var="data" />
${data}
</body>
</html>