<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	  integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	  crossorigin="anonymous"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>상품 관리</title>
</head>

<body>

<div class="container-fluid mt-4 p-2 border text-center bg-light">
	<h1 class="p-3">상품 리스트 - 관리자 페이지</h1>
	<hr />
	<div class="p-2 d-flex justify-content-end">
		<a href="product/productWrite.jsp"><input type="button" value="상품등록" class="btn btn-primary btn-sm" /></a>
	</div>
	
	<table class="table mt-2">
		<tr class="bg-secondary">
			<th>번호</th>
			<th>이름</th>
			<th>가격</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach var="product" items="${productList}">
			<tr>
				<td>${product.code }</td>
				<td>${product.name }</td>
				<td>${product.price }<small>원</small></td>
				<td><a href="productUpdate.do?code=${product.code}"><input type="button" value="수정" class="btn btn-success btn-sm" /></a></td>
				<td><a href="productDelete.do?code=${product.code}"><input type="button" value="삭제" class="btn btn-danger btn-sm" /></a></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>