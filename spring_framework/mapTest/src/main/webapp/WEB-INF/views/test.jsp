<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	  integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	  crossorigin="anonymous"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>간단한 지도 표시하기</title>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=vmntena1uz"></script>
<style>
#map {
	width: 60%;
	height: 600px;
}
</style>

</head>

<body>
<div class="container border bg-light">
	<h1 class="mt-3">PLANNERs</h1>
	<hr />
	<div class="container border-radius d-flex">
		<div id="map"></div>
		<div id="map-filter" class="border ml-2 p-3">
			<form action="#">
				<div class="custom-control custom-switch">
					<label class="custom-control-label" for="customSwitch1">밀집예상도</label>
					<input type="checkbox" class="custom-control-input" id="customSwitch1">
				</div>
				<div class="custom-control custom-switch">
					<label class="custom-control-label" for="customSwitch2">20대 선호지역</label>
					<input type="checkbox" class="custom-control-input" id="customSwitch2">
				</div>
				<div class="custom-control custom-switch">
					<label class="custom-control-label" for="customSwitch3">30대 선호지역</label>
					<input type="checkbox" class="custom-control-input" id="customSwitch3">
				</div>
			</form>
		</div>
	</div>
</div>


<script>
//지도를 삽입할 HTML 요소 또는 HTML 요소의 id를 지정합니다.
var mapDiv = document.getElementById('map'); // 'map'으로 선언해도 동일

var map = new naver.maps.Map('map', {
						   // Lat : 위도, Lng : 경도 값으로 이동하는 메서드
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 15
});


$(function contentBox() {
	$(".crimeBox").on({
		"mouseover" : function() {
			$(this).children('#crimeTime').show();
		},
		"mouseout" : function() {
			$(this).children('#crimeTime').hide();
		}
	})
});

function CustomMarker(lat, lng, crimeCat, serious, crimeDate, crimeTime) {
	var contentsHtml = "";
	var boxColor = ""
	
	if ( serious == 1 ) {
		boxColor = "#b12121";
	} else if ( serious == 2 ) {
		boxColor = "#e0692f";
	} else if ( serious == 3 ) {
		boxColor = "#d3cc07";
	}
	contentHtml = "<div class='crimeBox p-2 text-white text-center border' style='border-radius: 14px; opacity:75%; background-color: " + boxColor +";'>" +
  				  	"<div id='crimeType'>" + crimeCat + "</div>" +
  				  	"<div id='crimeTime' class='mt-2' style='display:none'>" + crimeDate + "<br/>" + crimeTime + "</div>" +
				  "</div>";
				  
	var marker = new naver.maps.Marker({
					    	 // Lat : 위도, Lng : 경도 위치에 마커를 표시
	position: new naver.maps.LatLng(lat, lng),
	map: map,
	// custom 마커 생성하기 (title, icon[디자인 형태])
	title: crimeCat,
	icon: {
		content: contentHtml,
		size: new naver.maps.Size(38, 58),
		anchor: new naver.maps.Point(19, 58),
		}
	});
}

var marker1 = new CustomMarker(37.3595704, 127.105399, "살인", 1, "2019-03-01", "14:31:02" );
var marker2 = new CustomMarker(37.3605704, 127.107399, "강도", 2, "2019-04-03", "09:33:50" );
var marker3 = new CustomMarker(37.3635704, 127.108399, "사기", 3, "2015-06-13", "23:21:42" );
</script>

</body>
</html>