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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	  integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	  crossorigin="anonymous"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Home</title>
<style>
.week div:nth-child(1) {
	color: red;
}

.week div:nth-child(7) {
	color: blue;
}

.day {
	width: 13%;
	padding-top: 2%;
	padding-right: 2%;
	border-radius: 10%;
}

.date {
	width: 13%;
	padding-top: 1%;
	padding-bottom: 7%;
	padding-right: 2%;
	border-radius: 10%;
}

</style>
</head>

<body>
<div class="container border">
	<div class="year-month text-align-center d-flex mt-2">
		<div id="year" class="pl-1">
			<h2>2022</h2>
		</div>
		<div id="month" class="pl-3 mt-2">
			<h5>3</h5>
		</div>
	</div>
	<hr />
	<div class="cal-dates">
		<div class="week d-flex justify-content-around mt-3 mb-3">
			<div class="day text-right mx-1 ">Sun</div>
			<div class="day text-right mx-1">Mon</div>
			<div class="day text-right mx-1">Tue</div>
			<div class="day text-right mx-1">Wed</div>
			<div class="day text-right mx-1">Tur</div>
			<div class="day text-right mx-1">Fri</div>
			<div class="day text-right mx-1">Sat</div>
		</div>
		
		<hr />
		
		<div class="week d-flex justify-content-around mt-3 mb-3">
			<div class="date text-right border mx-1 " data-day="Sun">1</div>
			<div class="date text-right border mx-1" data-day="Mon">2</div>
			<div class="date text-right border mx-1" data-day="Tue">3</div>
			<div class="date text-right border mx-1" data-day="Wed">4</div>
			<div class="date text-right border mx-1" data-day="Tur">5</div>
			<div class="date text-right border mx-1" data-day="Fri">6</div>
			<div class="date text-right border mx-1 " data-day="Sat">7</div>
		</div>
		
		<div class="week d-flex justify-content-around mt-3 mb-3">
			<div class="date text-right border mx-1 " data-day="Sun">8</div>
			<div class="date text-right border mx-1" data-day="Mon">9</div>
			<div class="date text-right border mx-1" data-day="Tue">10</div>
			<div class="date text-right border mx-1" data-day="Wed">11</div>
			<div class="date text-right border mx-1" data-day="Tur">12</div>
			<div class="date text-right border mx-1" data-day="Fri">13</div>
			<div class="date text-right border mx-1 " data-day="Sat">14</div>
		</div>
		
		<div class="week d-flex justify-content-around mt-3 mb-3">
			<div class="date text-right border mx-1 " data-day="Sun">15</div>
			<div class="date text-right border mx-1" data-day="Mon">16</div>
			<div class="date text-right border mx-1" data-day="Tue">17</div>
			<div class="date text-right border mx-1" data-day="Wed">18</div>
			<div class="date text-right border mx-1" data-day="Tur">19</div>
			<div class="date text-right border mx-1" data-day="Fri">20</div>
			<div class="date text-right border mx-1 " data-day="Sat">21</div>
		</div>
		
		<div class="week d-flex justify-content-around mt-3 mb-3">
			<div class="date text-right border mx-1 " data-day="Sun">22</div>
			<div class="date text-right border mx-1" data-day="Mon">23</div>
			<div class="date text-right border mx-1" data-day="Tue">24</div>
			<div class="date text-right border mx-1" data-day="Wed">25</div>
			<div class="date text-right border mx-1" data-day="Tur">26</div>
			<div class="date text-right border mx-1" data-day="Fri">27</div>
			<div class="date text-right border mx-1 " data-day="Sat">28</div>
		</div>
		<hr />
	</div>
	<form action="/planner" id="frm">
		<input id="startDate" type="text" name="startDate" />
		<input id="endDate" type="text" name="endDate" />
	</form>
</div>

<script>
$(document).ready(function() {
	let year = $('#year h2').text();
	let month = $('#month h5').text();
	let count = 0;
	$('.date').on('click', function() {
		count++;
		$(this).attr('count', count);
		
		if ( count == 1 ) {
			$(this).css({'background-color':'#668DFD', 'color':'white'});
			let date = $(this).text();
			let day = $(this).attr('data-day');
			let planDate1 = year+'/'+month+'/'+date+'/'+'('+day+')';
			$('#startDate').val(planDate1);
		} else if (count == 2) {
			$(this).css({'background-color':'#668DFD', 'color':'white'});
			let date = $(this).text();
			let day = $(this).attr('data-day');
			let planDate2 = year+'/'+month+'/'+date+'/'+'('+day+')';
			$('#endDate').val(planDate2);
			$('#frm').submit();
		}
	})		
	
});

</script>


</body>
</html>
