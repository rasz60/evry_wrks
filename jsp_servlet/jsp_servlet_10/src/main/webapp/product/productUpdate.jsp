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

<div class="container-fluid text-center">
	<h1>상품 수정 - 관리자 페이지</h1>
	<hr />
	
	<form action="productUpdateDone.do" method="post" encType="multipart/form-data" name="frm">
		<input type="hidden" name="code" value="${product.code}" />
		<input type="hidden" name="nonmakeImg" value="${product.pictureUrl}"/>
		<table class="table table-hover" >
		<tr>
			<td>
				<c:choose>
					<c:when test="${empty product.pictureUrl}">
						<img src="upload/noimage.gif" />
					</c:when>
					
					<c:otherwise>
						<img src="upload/${product.pictureUrl}" />
					</c:otherwise>
				</c:choose>
			</td>
			<td>
				<table>
					<tr>
						<th style="width: 80px">상품명</th>
						<td>
							<input type="text" name="name" value="${product.name }" size="80" />
						</td>
					</tr>
					
					<tr>
						<th>가 &nbsp; 격</th>
						<td>
							<input type="text" name="price" value="${product.price }"/><small class="mt-auto">원</small>
						</td>
					</tr>
					
					<tr>
						<th>사 &nbsp; 진</th>
						<td>
							<input type="file" name="pictureUrl" /><br />
							<small>&#8251; 이미지를 변경할 때만 사용해주세요.</small>
						</td>
					</tr>
					
					<tr>
						<th>설 &nbsp; 명</th>
						<td>
							<textarea name="description" cols="90" rows="10">${product.description}</textarea>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		</table>
		<hr />
		<div class="d-flex justify-content-center p-2">
			<input type="submit" value="수정" class="btn btn-primary mr-3" onclick="return productCheck()" />
			<input type="reset" value="다시작성" class="btn btn-danger mr-3" />
			<a href="productList.do"><input type="button" value="목록" class="btn btn-dark" /></a>
		</div>
	</form>
</div>
</body>
</html>