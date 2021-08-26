<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>
#theater {
	margin: 0 auto;
	width: 1100px;
}

#theater h2 {
	font-weight: bold;
	font-size: 40px;
	border-bottom: 1px solid #ccc;
}

#my_theater {
	float: right;
	color: rgb(49, 184, 238);
	font-weight: bold;
	cursor: pointer;
	
}

#theater_box {
	border: 1px solid black;
	border-radius: 5px;
	display: flex;
	justify-content: space-between;
	margin-bottom: 200px;
	margin-top: 5px;
}

.location_head {
	width: 155px;
	height: 50px;
	background-color: #333;
	color: white;
	font-weight: bold;
	margin-bottom: 10px;
	text-align: center;
	padding-top: 15px;
	cursor: pointer;
}

.location_head+ul {
	width: 155px;
	height: 250px;
	overflow: auto;
	list-style: none;
	padding-left: 0px;
	border-right: 1px solid #ddd;
}

.location_head+ul::-webkit-scrollbar {
	width: 10px;
}

.location_head+ul::-webkit-scrollbar-thumb {
	background-color: skyblue;
	border-radius: 30px;
}

.location_head+ul::-webkit-scrollbar-track {
	background-color: #888; /*스크롤바 트랙 색상*/
	border-radius: 30px;
}

.location_head+ul>li {
	font-size: 13px;
	margin: 5px;
	cursor: pointer;
}

.location_head+ul>li:hover {

	font-weight: bold;
	color: orange;

}

#theater_guide {
	margin-bottom: 200px;
}

#theater h2 {
	margin-bottom: 70px;
}

#theater_guide>h2+h3 {
	font-weight: 600;
	margin-bottom: 30px;
}

.theater_title {
	font-weight: bold;
	font-size: 24px;
	margin-bottom: 100px;
}

#theater_info {
	width: 1100px;
	display: flex;
	justify-content: space-evenly;
	margin-bottom: 70px;
}

#theater_facility {
	margin-right: 90px;
	width: 600px;
}

#theater_facility h4, #theater_price h4 {
	font-size: 20px;
	font-weight: 600;
	margin-bottom: 30px;
}

#map_box {
	margin-top: 20px;
	width: 400px;
	height: 300px;
	background-color: yellowgreen;
}

#theater_price th {
	text-align: center;
	width: 150px;
	vertical-align: middle;
	background-color: #eee;
}

#theater_price {
	width: 600px;
	margin-top: -150px;
}

#theater_price td {
	text-align: right;
}

#event_content {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

#event_content img {
	width: 400px;
	height: 250px;
	border-radius: 10px;
	border: 1px solid #ccc;
}
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>


	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>극장</span>
		</div>
	</div>

	<div id="theater_content">
		<div id="theater">
			<h2>극장선택</h2>

			<div id="my_theater">나의 선호 상영관 선택하기</div>
			<div style="clear: both"></div>

			<div id="theater_box">
				<div>
					<div class="location_head">서울</div>
					<ul>
						<c:forEach items="${list}" var="dto">
							<c:if test="${dto.theaterArea.equals('서울')}">
								<li data-theater-num="${dto.theaterSeq}">${dto.theaterName}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div>
					<div class="location_head">경기</div>
					<ul>
						<c:forEach items="${list}" var="dto">
							<c:if test="${dto.theaterArea.equals('경기')}">
								<li data-theater-num="${dto.theaterSeq}">${dto.theaterName}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div>
					<div class="location_head">인천</div>
					<ul>
						<c:forEach items="${list}" var="dto">
							<c:if test="${dto.theaterArea.equals('인천')}">
								<li data-theater-num="${dto.theaterSeq}">${dto.theaterName}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div>
					<div class="location_head">대전/충청/세종</div>
					<ul>
						<c:forEach items="${list}" var="dto">
							<c:if
								test="${dto.theaterArea.equals('대전')||dto.theaterArea.equals('충청')||dto.theaterArea.equals('세종')}">
								<li data-theater-num="${dto.theaterSeq}">${dto.theaterName}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div>
					<div class="location_head">부산/대구/경상</div>
					<ul>
						<c:forEach items="${list}" var="dto">
							<c:if
								test="${dto.theaterArea.equals('부산')||dto.theaterArea.equals('대구')||dto.theaterArea.equals('경상')}">
								<li data-theater-num="${dto.theaterSeq}">${dto.theaterName}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div>
					<div class="location_head">광주/전라</div>
					<ul>
						<c:forEach items="${list}" var="dto">
							<c:if
								test="${dto.theaterArea.equals('광주')||dto.theaterArea.equals('전라')}">
								<li data-theater-num="${dto.theaterSeq}">${dto.theaterName}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div>
					<div class="location_head">강원</div>
					<ul>
						<c:forEach items="${list}" var="dto">
							<c:if test="${dto.theaterArea.equals('강원')}">
								<li data-theater-num="${dto.theaterSeq}">${dto.theaterName}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>

			<c:if test="${not empty seq}">
				<c:forEach items="${list}" var="dto">
					<c:if test="${dto.theaterSeq == seq}">
						<div id="theater_guide">
							<h2>극장 정보</h2>

							<h3>FilmMoA(${dto.theaterName })</h3>

							<p class="theater_title">
								${dto.theaterTitle}
							</p>

							<div id="theater_info">
								<div id="theater_facility">
									<h4>시설 안내</h4>
									<p style="font-size: 15px; line-height: 26px;">
										${dto.theaterInfo }
									</p>
									<div style="font-size: 18px;">주소 : ${dto.theaterAddress }</div>
								</div>
								<div id="theater_map">
									<button type="button" class="btn btn-danger">위치보기</button>
									<div id="map_box"></div>
								</div>
							</div>

							<div id="theater_price">
								<h4 style="margin-bottom: 0px;">가격 안내</h4>
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>요일</th>
											<th>상영시간</th>
											<th>일반</th>
											<th>청소년</th>
											<th>어린이</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th rowspan="3">평일</th>
											<td>조조 (06:00~)</td>
											<td>7,000</td>
											<td>6,000</td>
											<td>5,000</td>
										</tr>
										<tr>
											<td>일반 (10:01~)</td>
											<td>10,000</td>
											<td>8,000</td>
											<td>5,000</td>
										</tr>
										<tr>
											<td>심야 (24:00~)</td>
											<td>7,000</td>
											<td>6,000</td>
											<td>5,000</td>
										</tr>
										<tr>
											<th rowspan="3">휴일</th>
											<td>조조 (06:00~)</td>
											<td>8,000</td>
											<td>7,000</td>
											<td>6,000</td>
										</tr>
										<tr>
											<td>일반 (10:01~)</td>
											<td>11,000</td>
											<td>9,000</td>
											<td>6,000</td>
										</tr>
										<tr>
											<td>심야 (24:00~)</td>
											<td>8,000</td>
											<td>7,000</td>
											<td>6,000</td>
										</tr>

									</tbody>
								</table>
								<p style="color: #aaa;">
									성인: 만19세 이상<br> 청소년: 만14세 이상 19세 미만<br> 어린이: 만 13세 이하
								</p>
							</div>
						</div>

						<div id="theater_event">
							<h2>이벤트</h2>
							<div id="event_content">
								<img src="/web_team6/asset/images/event_quiz.jpg" alt="">
								<img src="/web_team6/asset/images/event_sns.jpg" alt="">
							</div>
						</div>
					</c:if>
				</c:forEach>
			</c:if>
		</div>
	</div>

	<div style="margin-top: 300px"></div>




	<%@ include file="/inc/footer.jsp"%>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00b155f5bebe1f869e80372342e6c30b"></script>
	<script>
	
		
	$('li').click(function(){
		
		
		
		location.href="/web_team6/theater/theatermain.do?seq="+$(this).data('theaterNum');
			
	});
	
	
	<c:if test="${not empty seq}">
		<c:forEach items="${list}" var="dto">
			if (${seq} == ${dto.theaterSeq}){
			
				var container = document.getElementById('map_box');
				var options = {
					center : new kakao.maps.LatLng(${dto.lat}, ${dto.lng}),
					level : 3
				 };
		
				var map_box = new kakao.maps.Map(container, options);
				
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(${dto.lat}, ${dto.lng}); 
	
				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});
	
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map_box);
			
		
			}
		</c:forEach>
	</c:if>
	
	$('#my_theater').click(function(){
		
		<c:if test="${empty id}">
			alert('로그인이 필요한 작업입니다.');
		</c:if>
		
		<c:if test="${not empty id}">
			location.href="/web_team6/theater/theatermain.do?seq="+${myTheater};
			</c:if>
		
	});
	
	

		
		
		
		
	</script>

</body>
</html>


