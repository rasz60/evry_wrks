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
<script type="text/javascript" src="script/product.js"></script>
<title>상품 등록</title>
</head>

<body>

<div class="container-fluid p-2 border bg-light mt-2 text-center my-auto">
	<h1>상품 등록 - 관리자 페이지</h1>
	<hr />
	<form method="post" enctype="multipart/form-data" name="frm" >
		<div class="form-group row">
			<label for="name" class="col-2 text-right pr-4">상품명</label>
			<input type="text" name="name" id="name" class="col-7"/>
		</div>
		
		<div class="form-group row">
			<label for="price" class="col-2 text-right pr-4">가 &nbsp; 격</label>
			<input type="text" name="price" id="price" class="col-5"/><small>&nbsp;원</small>
		</div>
		
		<div class="form-group row">
			<label for="img" class="col-2 text-right pr-4">사 &nbsp; 진</label>
			<input type="file" name="pictureUrl" id="img" class="col-5"/><small>&#8251; 이미지를 변경할 때만 사용해주세요.</small>
		</div>
		
		<div class="form-group row">
			<label for="desc" class="col-2 text-right pr-4">설 &nbsp; 명</label>
			<textarea name="description" id="desc" cols="100" rows="10"></textarea>
		</div>
		<hr />
		<div class="d-flex justify-content-center p-2">
			<input type="submit" value="등록" class="btn btn-primary mr-3" onclick="return productCheck()" />
			<input type="reset" value="초기화" class="btn btn-danger mr-3" />
			<a href="productList.do"><input type="button" value="목록" class="btn btn-dark" /></a>
		</div>
		
	</form>
</div>
</body>
</html>