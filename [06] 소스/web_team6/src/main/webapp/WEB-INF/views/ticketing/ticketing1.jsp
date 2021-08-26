<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/ticketing.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>

	<div class="container">

		<!-- 위치 -->
		<div id="page_util">
			<div id="page_util_in">
				<span><img src="/web_team6/asset/images/home-page.png"
					alt="H" class="home_icon" style="width: 15px"></span> <span>&gt;</span>
				<span>예매</span>
			</div>
		</div>

		<!-- 진행과정 -->
		<div class="ticket-process">
			<div class="circle lineup checked">영화예매</div>
			<!-- 
			 -->
			<div class="line lineup"></div>
			<!-- 
			 -->
			<div class="circle lineup">인원/좌석</div>
			<!-- 
			 -->
			<div class="line lineup"></div>
			<!-- 
			 -->
			<div class="circle lineup">결제</div>
			<!-- 
			 -->
			<div class="line lineup"></div>
			<!-- 
			 -->
			<div class="circle lineup">예매완료</div>
		</div>

		<!-- 영화선택 -->
		<div class="menu">영화선택</div>
		<hr class="section-line">

		<section class="items">
			<div class="carouselOfImages">

				<c:forEach items="${playingList}" var="dto">
					<div class="carouselImage">
						<img class="poster" name="${dto.movieKorName}"
							src="../asset/images/${dto.moviePoster}">
					</div>
				</c:forEach>

			</div>
		</section>


		<hr class="hidden-line">
		<div class="menu">극장 및 상영날짜 선택</div>
		<hr class="section-line">

		<div id="cinema">

			<!-- 극장 선택 -->
			<div id="area" class="btn-group-vertical btn-style" role="group">

				<c:forEach items="${list2}" var="dto2">
					<input type="button" class="btn btn-default area"
						value="${dto2.theaterArea}">
				</c:forEach>

			</div>

			<div id="city" class="showbrch">
				<c:forEach items="${list3}" var="dto3">
					<div id="${dto3.theaterArea}"
						class="showlist btn-group-vertical btn-showbrch">
						<input type="button" class="btn btn-default brch"
							value="${dto3.theaterName}">
					</div>
				</c:forEach>
			</div>
			<!-- 극장선택 끝 -->


			<div style="display: flex; flex-direction: column; position: relative;">
				<c:if test="${not empty poster}">
				<img alt="포스터" src="/web_team6/asset/images/${poster}" style="width: 250px; height: 360px; position: absolute; right: 0px;top: 0px;">
				</c:if>
				<div>
					<p class="form-inline" style="float: left;">
						상영날짜&nbsp;&nbsp;&nbsp; <input type="text" id="date"
							class="form-control">
					</p>
					<button id="show_schedule" class="btn btn-default">조회</button>
				</div>
				<div>
					<c:if test="${scheduleList.size()==0}">
					<h2 style="margin-top: 100px; font-size: 20px; color: tomato; padding-left: 50px; font-weight: bold">상영일정이 없습니다</h2>
					</c:if>
					<c:forEach items="${scheduleList}" var="dto">
						<div id="${dto.theaterName}" class="showtime btn-time">
							<input style="width: 90px; height: 50px;" type="button"
								class="btn btn-default time"
								value="[${dto.theaterRoomName}] ${dto.scheduleTime.substring(11,16)}">
						</div>
					</c:forEach>
				</div>
			</div>


		</div>
		<!-- end #cinema -->




		<div class="bottom" style="display: none;">
			<div class="ticketing-ticket">
				<div style="display: none;">
					<!-- 기본틀 필요 -->
					<img id="choice_movie" class="selected-poster"
						src="/web_team6/asset/images/${poster}">
				</div>
				<div class="selected-info" style="display: none;">
					<p class="title">
						영화명 : <span id="posterDisplay">${mName}</span>
					</p>
					<p>
						지역 : <span id="areaDisplay">${area}</span>
					</p>
					<p>
						극장명 : <span id="brchDisplay">${theater}</span>
					</p>
					<p>
						상영일자 : <span id="dateDisplay">${date}</span>
					</p>
					<p>
						상영시간 : <span id="timeDisplay"></span>
					</p>
				</div>
				<button id="choice_seat" class="btn btn-warning btn-seat">좌석/인원
					선택하기</button>
			</div>
		</div>
	</div>

	<div style="margin-top: 100px;"></div>
	
	<%@ include file="/inc/footer.jsp" %>

	<script>
	
	// 영화선택 포스터 한 개만 선택가능
	function checkOnlyOne(element) {
		  
		  const checkboxes = document.getElementsByName("poster");
		  
		  checkboxes.forEach((cb) => {cb.checked = false;})
		  element.checked = true;
	}
	
	
	// 영화 포스터 슬라이드
	$(document).ready(function() {
		
		var $imagesCarousel = $('.carouselOfImages').flickity({
		  contain: true,
		  wrapAround: true,
		  friction: 0.3
		});
		
		function resizeCells() {
		  var flkty = $imagesCarousel.data('flickity');
		  var $current = flkty.selectedIndex
		  var $length = flkty.cells.length
		  if ($length <='5') {
		    $imagesCarousel.flickity('destroy');
		  }
		  $('.carouselOfImages .carouselImage').removeClass("nextToSelected");
		  $('.carouselOfImages .carouselImage').eq($current-1).addClass("nextToSelected");
		  if ($current+1 == $length) {
		    var $endCell = "0"
		  } else {
		    var $endCell = $current+1
		  }
		   $('.carouselOfImages .carouselImage').eq($endCell).addClass("nextToSelected");
		  };
		resizeCells();

		$imagesCarousel.on('scroll.flickity', function() {
		    resizeCells();
		});
		
		

	});
	
	
	
	// 버튼 클릭시 해당하는 리스트 보여주기
	$(document).ready(function(){
				
		$(".showlist").hide();
		$(".showtime").hide();

		$(".area").click(function(){ // 지역 선택 -> 극장명 출력
			$('.area').removeClass('active');
			$(this).addClass('active');
			$(".showlist").hide();
			/* alert($(this).val()); */
			$("#" + $(this).attr('value')).show();
			$("#areaDisplay").text('');
			$("#areaDisplay").text($(this).val()); // bottom에 선택된 값 넣기 - 지역
		});
		
		
		$(".brch").click(function(){ // 극장명 선택 -> 상영시간 출력	
			$('.brch').removeClass('active');
			$(this).addClass('active');
			$(".showtime").hide();
			$("#" + $(this).attr('value')).show();
			$("#brchDisplay").text('');
			$("#brchDisplay").text($(this).val()); // bottom에 선택된 값 넣기 - 상영관
		});
		
		
		$(".btn-time").click(function(){
			$("#timeDisplay").text('');
			$("#timeDisplay").text($(this).val()); // bottom에 선택된 값 넣기 - 상영시간
		});
		
		$('.showtime input').click(function(){
			$('.showtime input').removeClass('active');
			$(this).addClass('active');
		})
	});
	
	// 달력
	$(function() {
		$( "#date" ).datepicker({
			minDate: 0, // 오늘 이전은 선택 불가능
			maxDate: 7, // 오늘 +7일 이후 선택 불가능
			
			onSelect:function(){
				$("#dateDisplay").text($(this).val()) // bottom에 선택된 값 넣기 - 상영일자
			}
		});
	});
	
	
	
	/* var img ="";
		$(window).mousemove(function(){
				
				$("#posterDisplay").text($('.is-selected').children().attr('name'));
				img = $('.is-selected').children().attr('src').substring($('.is-selected').children().attr('src').lastIndexOf('/')+1);
				$('#choice_movie').attr('src','/web_team6/asset/images/'+img);
				
		});	
 		*/	
 		
		$('#show_schedule').click(function(){
					
			$("#posterDisplay").text($('.is-selected').children().attr('name'));
			if(($('#areaDisplay').text()!=null && $('#areaDisplay').text()!='')&&($('#brchDisplay').text()!=null && $('#brchDisplay').text()!='')&&($('#dateDisplay').text()!=null && $('#dateDisplay').text()!='')){
				
				if($('#areaDisplay').text() != '${area}'|| $('#brchDisplay').text() != '${theater}' || $('#dateDisplay').text() != '${date}'|| $("#posterDisplay").text() != '${mName}'){
				location.href="/web_team6/ticketing/ticketing1.do?mName="+$('#posterDisplay').text()+"&area="+$('#areaDisplay').text()+"&theater="+$('#brchDisplay').text()+"&date="+$('#dateDisplay').text();
				}
			}
				
		});
		
		$(document).ready(function(){
			$('#area input').each(function(index,item){
				if($(item).val()=='${area}'){
				$(item).click();
				}
			});
		});
		
		
		
		$(document).ready(function(){
			$('#${area} input').each(function(index,item){
				if($(item).val()=='${theater}'){
				$(item).click();
				}
			});
		});
		
		
		
		$(document).ready(function(){
			$('#date').val('${date}');
		});
		
			
			
			
			
		
		$('.showtime .time').each(function(index,item){
			
			$(item).click(function(){
				
				
				
				location.href='/web_team6/ticketing/ticketing2.do?mName=${mName}&area=${area}&theater=${theater}&date=${date}&time='+$(this).val().substring($(this).val().indexOf(' ')+1);
			});
			
			
			
		});
		
		
		
		</script>
</body>
</html>