<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>formatNumber</title>
</head>

<body>

<%-- 
  -- <fmt:formatNumber value="데이터"
  					  [type="{ number[dft] | cunrrency | percent }"] : 숫자 표형 형식 설정
  					  [pattern="rex"] : 정규식 형태로 패턴 설정
  					  [currencySymbol="화폐단위"] : type="currency"일 때, 화폐 종류 설정
  					  [groupingUsed="{ true[dft] | false }"] : 3자리씩 끊어서 콤마 표시 유(true)/무(false) 설정
  					  
  					  [var="name"] : 해당 포맷을 변수로 저장할 때 설정
  					  [scope="scope"] : 포맷을 저장한 변수가 사용될 범위 설정
  	/>
 --%>

<h3>숫자 1234567.89 출력</h3>
<hr />
<p>groupingUsed="true / false"</p>
<!-- groupingUsed : 3자리씩 쉼표로 구분하여 표현 -->
true : <fmt:formatNumber value="1234567.89" /><br />
false : <fmt:formatNumber value="1234567.89" groupingUsed="false"/><br />
<hr />

<p>type="number / currency / percent"</p>
<!-- percent : value="1" == 100% -->
100% : <fmt:formatNumber value="1" type="percent" /><br />
50% : <fmt:formatNumber value="0.5" type="percent" /><br />
10000월 : <fmt:formatNumber value="10000" type="currency" /><br />
10000달러 : <fmt:formatNumber value="10000" type="currency" currencySymbol="$" /><br />
<hr />

<p>pattern</p>
<!-- pattern : #(값이 있으면 표시, 값이 없거나 소수 아래 자리는 생략), 0(값이 없으면 0으로 채움), .(소수점) 을 이용하여 숫자 표현 정규식 작성 -->
1234567.8912345 {#,#00.0#} : <fmt:formatNumber value="1234567.8912345" pattern="#,#00.0#" /><br />
1234567.8 {#,#00.0#} : <fmt:formatNumber value="1234567.8" pattern="#,#00.0#" /><br />
1234567.89 {.000} : <fmt:formatNumber value="1234567.89" pattern=".000" /><br />
<hr />

</body>
</html>