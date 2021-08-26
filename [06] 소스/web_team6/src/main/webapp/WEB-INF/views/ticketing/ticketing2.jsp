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
<script>
	
	<c:if test="${empty id}">
		location.href="/web_team6/user/userlogin.do";
	</c:if>
	
	</script>
</head>
<body onload="onLoaderFunc()">
	<%@ include file="/inc/header.jsp"%>


	<div class="container">

		<!-- 위치 -->
		<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>예매</span><span>&gt;</span> <span>좌석선택</span>
		</div>
	</div>

		<!-- 진행과정 -->
		<div class="ticket-process">
			<div class="circle lineup">영화예매</div><!-- 
		 --><div class="line lineup"></div><!-- 
		 --><div class="circle lineup checked">인원/좌석</div><!-- 
		 --><div class="line lineup"></div><!-- 
		 --><div class="circle lineup">결제</div><!-- 
		 --><div class="line lineup"></div><!-- 
		 --><div class="circle lineup">예매완료</div>
		</div>
		
		<div class="menu">인원 및 좌석 선택</div>
		<hr class="section-line">
		
		<div class="inputForm">
			<div id="adult" class="oneline">성인
			  <button type="button" id="minus1" class="minus btn btn-default"><span class="glyphicon glyphicon-minus"></span></button>
			  <input type="text" id="adultSeat" value="0" class="count" required>
			  <button type="button" id="plus1" class="plus btn btn-default"><span class="glyphicon glyphicon-plus"></span></button>
			</div>
			<div id="teen" class="oneline">청소년
			  <button type="button" id="minus1" class="minus btn btn-default"><span class="glyphicon glyphicon-minus"></span></button>
			  <input type="text" id="teenSeat" value="0" class="count" required>
			  <button type="button" id="plus1" class="plus btn btn-default"><span class="glyphicon glyphicon-plus"></span></button>
			</div>
			<div id="child" class="oneline">어린이
			  <button type="button" id="minus1" class="minus btn btn-default"><span class="glyphicon glyphicon-minus"></span></button>
			  <input type="text" id="childSeat" value="0" class="count" required>
			  <button type="button" id="plus1" class="plus btn btn-default"><span class="glyphicon glyphicon-plus"></span></button>
			</div>
			<br />
			<button class="btn btn-default" onclick="takeData()"> 좌석선택하기</button>
		</div>

		<br /><br />
		<!-- 좌석 -->
		<div class="seatStructure">
			<table id="seatsBlock">
			 <tr >
			 	<td colspan="18">
					<div class="smallBox yellowBox seatinfo">선택된 좌석</div>
			    	<div class="smallBox blackBox seatinfo">예매된 좌석</div>
			    	<div class="smallBox emptyBox seatinfo">빈 좌석</div>
			 	</td>
			 </tr>
			  <tr>
			    <td colspan="18"><div class="screen">SCREEN</div></td>
	
			  </tr>
			  
			  <tr>
			    <td></td>
			    <td>1</td>
			    <td>2</td>
			    <td>3</td>
			    <td>4</td>
			    <td></td>
			    <td>5</td>
			    <td>6</td>
			    <td>7</td>
			    <td>8</td>
			    <td>9</td>
			    <td>10</td>
			    <td>11</td>
			    <td></td>
			    <td>12</td>
			    <td>13</td>
			    <td>14</td>
			    <td>15</td>
			</tr>
			  
			<tr>
			    <td>가</td>
			    <td><input type="checkbox" class="seats" value="가1"></td>
			    <td><input type="checkbox" class="seats" value="가2"></td>
			    <td><input type="checkbox" class="seats" value="가3"></td>
			    <td><input type="checkbox" class="seats" value="가4"></td>
			    <td class="seatGap"></td>
			    <td><input type="checkbox" class="seats" value="가5"></td>
			    <td><input type="checkbox" class="seats" value="가6"></td>
			    <td><input type="checkbox" class="seats" value="가7"></td>
			    <td><input type="checkbox" class="seats" value="가8"></td>
			    <td><input type="checkbox" class="seats" value="가9"></td>
			    <td><input type="checkbox" class="seats" value="가10"></td>
			    <td><input type="checkbox" class="seats" value="가11"></td>
			    <td class="seatGap"></td>
			    <td><input type="checkbox" class="seats" value="가12"></td>
			    <td><input type="checkbox" class="seats" value="가13"></td>
			    <td><input type="checkbox" class="seats" value="가14"></td>
			    <td><input type="checkbox" class="seats" value="가15"></td>
			  </tr>
			  
			  <tr>
			    <td>나</td>
			    <td><input type="checkbox" class="seats" value="나1"></td>
			    <td><input type="checkbox" class="seats" value="나2"></td>
			    <td><input type="checkbox" class="seats" value="나3"></td>
			    <td><input type="checkbox" class="seats" value="나4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="나5"></td>
			    <td><input type="checkbox" class="seats" value="나6"></td>
			    <td><input type="checkbox" class="seats" value="나7"></td>
			    <td><input type="checkbox" class="seats" value="나8"></td>
			    <td><input type="checkbox" class="seats" value="나9"></td>
			    <td><input type="checkbox" class="seats" value="나10"></td>
			    <td><input type="checkbox" class="seats" value="나11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="나12"></td>
			    <td><input type="checkbox" class="seats" value="나13"></td>
			    <td><input type="checkbox" class="seats" value="나14"></td>
			    <td><input type="checkbox" class="seats" value="나15"></td>
			  </tr>
			  
			  <tr>
			    <td>다</td>
			    <td><input type="checkbox" class="seats" value="다1"></td>
			    <td><input type="checkbox" class="seats" value="다2"></td>
			    <td><input type="checkbox" class="seats" value="다3"></td>
			    <td><input type="checkbox" class="seats" value="다4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="다5"></td>
			    <td><input type="checkbox" class="seats" value="다6"></td>
			    <td><input type="checkbox" class="seats" value="다7"></td>
			    <td><input type="checkbox" class="seats" value="다8"></td>
			    <td><input type="checkbox" class="seats" value="다9"></td>
			    <td><input type="checkbox" class="seats" value="다10"></td>
			    <td><input type="checkbox" class="seats" value="다11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="다12"></td>
			    <td><input type="checkbox" class="seats" value="다13"></td>
			    <td><input type="checkbox" class="seats" value="다14"></td>
			    <td><input type="checkbox" class="seats" value="다15"></td>
			</tr>
			  
			<tr>
			    <td>라</td>
			    <td><input type="checkbox" class="seats" value="라1"></td>
			    <td><input type="checkbox" class="seats" value="라2"></td>
			    <td><input type="checkbox" class="seats" value="라3"></td>
			    <td><input type="checkbox" class="seats" value="라4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="라5"></td>
			    <td><input type="checkbox" class="seats" value="라6"></td>
			    <td><input type="checkbox" class="seats" value="라7"></td>
			    <td><input type="checkbox" class="seats" value="라8"></td>
			    <td><input type="checkbox" class="seats" value="라9"></td>
			    <td><input type="checkbox" class="seats" value="라10"></td>
			    <td><input type="checkbox" class="seats" value="라11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="라12"></td>
			    <td><input type="checkbox" class="seats" value="라13"></td>
			    <td><input type="checkbox" class="seats" value="라14"></td>
			    <td><input type="checkbox" class="seats" value="라15"></td>
			</tr>
			  
			<tr>
			    <td>마</td>
			    <td><input type="checkbox" class="seats" value="마1"></td>
			    <td><input type="checkbox" class="seats" value="마2"></td>
			    <td><input type="checkbox" class="seats" value="마3"></td>
			    <td><input type="checkbox" class="seats" value="마4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="마5"></td>
			    <td><input type="checkbox" class="seats" value="마6"></td>
			    <td><input type="checkbox" class="seats" value="마7"></td>
			    <td><input type="checkbox" class="seats" value="마8"></td>
			    <td><input type="checkbox" class="seats" value="마9"></td>
			    <td><input type="checkbox" class="seats" value="마10"></td>
			    <td><input type="checkbox" class="seats" value="마11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="마12"></td>
			    <td><input type="checkbox" class="seats" value="마13"></td>
			    <td><input type="checkbox" class="seats" value="마14"></td>
			    <td><input type="checkbox" class="seats" value="마15"></td>
			</tr>
			  
			<tr class="seatVGap"></tr>
			  
			<tr>
			    <td>F</td>
			    <td><input type="checkbox" class="seats" value="F1"></td>
			    <td><input type="checkbox" class="seats" value="F2"></td>
			    <td><input type="checkbox" class="seats" value="F3"></td>
			    <td><input type="checkbox" class="seats" value="F4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="F5"></td>
			    <td><input type="checkbox" class="seats" value="F6"></td>
			    <td><input type="checkbox" class="seats" value="F7"></td>
			    <td><input type="checkbox" class="seats" value="F8"></td>
			    <td><input type="checkbox" class="seats" value="F9"></td>
			    <td><input type="checkbox" class="seats" value="F10"></td>
			    <td><input type="checkbox" class="seats" value="F11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="F12"></td>
			    <td><input type="checkbox" class="seats" value="F13"></td>
			    <td><input type="checkbox" class="seats" value="F14"></td>
			    <td><input type="checkbox" class="seats" value="F15"></td>
			</tr>
			  
			<tr>
			    <td>G</td>
			    <td><input type="checkbox" class="seats" value="G1"></td>
			    <td><input type="checkbox" class="seats" value="G2"></td>
			    <td><input type="checkbox" class="seats" value="G3"></td>
			    <td><input type="checkbox" class="seats" value="G4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="G5"></td>
			    <td><input type="checkbox" class="seats" value="G6"></td>
			    <td><input type="checkbox" class="seats" value="G7"></td>
			    <td><input type="checkbox" class="seats" value="G8"></td>
			    <td><input type="checkbox" class="seats" value="G9"></td>
			    <td><input type="checkbox" class="seats" value="G10"></td>
			    <td><input type="checkbox" class="seats" value="G11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="G12"></td>
			    <td><input type="checkbox" class="seats" value="G13"></td>
			    <td><input type="checkbox" class="seats" value="G14"></td>
			    <td><input type="checkbox" class="seats" value="G15"></td>
			</tr>
			  
			<tr>
			    <td>H</td>
			    <td><input type="checkbox" class="seats" value="H1"></td>
			    <td><input type="checkbox" class="seats" value="H2"></td>
			    <td><input type="checkbox" class="seats" value="H3"></td>
			    <td><input type="checkbox" class="seats" value="H4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="H5"></td>
			    <td><input type="checkbox" class="seats" value="H6"></td>
			    <td><input type="checkbox" class="seats" value="H7"></td>
			    <td><input type="checkbox" class="seats" value="H8"></td>
			    <td><input type="checkbox" class="seats" value="H9"></td>
			    <td><input type="checkbox" class="seats" value="H10"></td>
			    <td><input type="checkbox" class="seats" value="H11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="H12"></td>
			    <td><input type="checkbox" class="seats" value="H13"></td>
			    <td><input type="checkbox" class="seats" value="H14"></td>
			    <td><input type="checkbox" class="seats" value="H15"></td>
			</tr>
			  
			<tr>
			    <td>I</td>
			    <td><input type="checkbox" class="seats" value="I1"></td>
			    <td><input type="checkbox" class="seats" value="I2"></td>
			    <td><input type="checkbox" class="seats" value="I3"></td>
			    <td><input type="checkbox" class="seats" value="I4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="I5"></td>
			    <td><input type="checkbox" class="seats" value="I6"></td>
			    <td><input type="checkbox" class="seats" value="I7"></td>
			    <td><input type="checkbox" class="seats" value="I8"></td>
			    <td><input type="checkbox" class="seats" value="I9"></td>
			    <td><input type="checkbox" class="seats" value="I10"></td>
			    <td><input type="checkbox" class="seats" value="I11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="I12"></td>
			    <td><input type="checkbox" class="seats" value="I14"></td>
			    <td><input type="checkbox" class="seats" value="I15"></td>
			    <td><input type="checkbox" class="seats" value="I16"></td>
			</tr>
			  
			<tr>
			    <td>J</td>
			    <td><input type="checkbox" class="seats" value="J1"></td>
			    <td><input type="checkbox" class="seats" value="J2"></td>
			    <td><input type="checkbox" class="seats" value="J3"></td>
			    <td><input type="checkbox" class="seats" value="J4"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="J5"></td>
			    <td><input type="checkbox" class="seats" value="J6"></td>
			    <td><input type="checkbox" class="seats" value="J7"></td>
			    <td><input type="checkbox" class="seats" value="J8"></td>
			    <td><input type="checkbox" class="seats" value="J9"></td>
			    <td><input type="checkbox" class="seats" value="J10"></td>
			    <td><input type="checkbox" class="seats" value="J11"></td>
			    <td></td>
			    <td><input type="checkbox" class="seats" value="J12"></td>
			    <td><input type="checkbox" class="seats" value="J13"></td>
			    <td><input type="checkbox" class="seats" value="J14"></td>
			    <td><input type="checkbox" class="seats" value="J15"></td>
			</tr>
			  
			  
			</table>
			  
			<br/><button class="btn btn-default" onclick="updateTextArea()">선택완료</button>
				<button id="erase" class="btn btn-danger" type="button" onclick="location.reload()">초기화</button>
		</div>
		      
		
	<div class="bottom">
		<div class="ticketing-ticket">
			<img class="selected-poster" src="/web_team6/asset/images/${dto.moviePoster}">
			
			<div class="selected-info">
				<p class="title">영화 :${dto.movieKorName}</p>
				<p>지역:${dto.theaterArea }</p>
				<p>극장명:${dto.theaterName }</p>
				<p>상영일자 : ${dto.scheduleDate.substring(0,10)}</p>
				<p>상영시간:${time}</p>
			</div>
			<div class="bar">
			</div>
			<div class="selected-seat displayerBoxes">
				<p>인원: <span id="NumberDisplay"></span></p>
				<p>좌석번호: <span id="seatsDisplay"></span></p>
			</div>
			
			
			<div class="bar">
			</div>
			<div class="total-pay">
				<p>합계(단위: 원)</p>
				<br />
				<p style=" font-size: 25px;font-weight:bold;"><span id="payDisplay"></span></p>
			</div>
			<button id="ticket_pay" class="btn btn-warning btn-seat">결제하기</button>
		</div>
	</div>


</div>
</div>


	<script>
		
		// 인원수 버튼 +, -
		var total;
		
		$('.count').change(function() {
		}).trigger('change');
		
		$('.plus').click(function() {
		  var target = $('.count', this.parentNode)[0];
		  target.value = +target.value + 1;
		});
		
		$('.minus').click(function() {
		  var target = $('.count', this.parentNode)[0];
		  if (target.value > 0) {
		    target.value = +target.value - 1;
		  }
		});
		
		// 좌석선택 및 금액합계
		function onLoaderFunc() {
		  $(".seatStructure *").prop("disabled", true); // 좌석 선택 비활성화
		  $('#erase').prop("disabled", false);
		}
		
		function takeData() {
		  if ($("#adultSeat").val() == "0" && $("#teenSeat").val() == "0" && $("#childSeat").val() == "0") {
		  alert("인원수를 선택해주세요.");
		  } else {
		    $(".inputForm *").prop("disabled", true); // 인원수 선택 비활성화
		    $(".seatStructure *").prop("disabled", false); // 좌석 선택 활성화
		    $('#erase').prop("disabled", false);  
		  }
		}
		
		
		function updateTextArea() { 
			
			
		  	if ($("input:checked").length == (Number($("#adultSeat").val()) + Number($("#teenSeat").val()) + Number($("#childSeat").val())) ) { //좌석수 = 인원수
			  
		      	$(".seatStructure *").prop("disabled", true); // 좌석 선택 비활성화
		      	$('#erase').prop("disabled", false);
			     var allNumberVals = [];
			     var allSeatsVals = [];
			  
			     allNumberVals.push(Number($("#adultSeat").val()) + Number($("#teenSeat").val()) + Number($("#childSeat").val())); 
			     $('#seatsBlock :checked').each(function() {
			       allSeatsVals.push($(this).val());
			     });
			     
			     // 성인 10000, 청소년 8000, 어린이 6000
			     var allPayVals = (10000 * Number($("#adultSeat").val())) + (8000 * Number($("#teenSeat").val())) + (6000 * Number($("#childSeat").val()));
			     
			     $('#NumberDisplay').text(allNumberVals); // 인원수 총합 표시
			     $('#seatsDisplay').text(allSeatsVals); // 선택된 좌석 표시
			     $('#payDisplay').text(allPayVals);// 총 가격
			     
			    } else {
			      alert("좌석 " + (Number($("#adultSeat").val()) + Number($("#teenSeat").val()) + Number($("#childSeat").val())) + "개를 선택해주세요.");
		    }
		}
		
		
		function myFunction() {
		  alert($("input:checked").length);
		}
				
		$(":checkbox").click(function() {
			
		  if ($("input:checked").length == (Number($("#adultSeat").val()) + Number($("#teenSeat").val()) + Number($("#childSeat").val()))) {
			  
		    $(":checkbox").prop('disabled', true);
		    $(':checked').prop('disabled', false);
		    
		  } else {
		      $(":checkbox").prop('disabled', false);
		    }
		});
		
		
		
		$('#ticket_pay').click(function(){
			
			if($('#NumberDisplay').text() != null && $('#NumberDisplay').text() != ""  &&  $('#seatsDisplay').text() != null && $('#seatsDisplay').text() != ""){
			
								
				location.href="/web_team6/ticketing/ticketingadd.do?count="+$('#NumberDisplay').text()+"&seat="+$('#seatsDisplay').text()+"&scheduleSeq="+${dto.scheduleSeq}+"&adult="+$('#adultSeat').val()+"&teen="+$('#teenSeat').val()+"&child="+$('#childSeat').val();
				
				
			}
			
			
			
		});
		
		
		
		
		
		

	
	</script>
</body>
</html>