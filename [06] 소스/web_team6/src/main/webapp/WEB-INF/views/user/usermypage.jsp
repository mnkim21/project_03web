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

.section {
	width: 1200px;
	margin: 0 auto;
	
}

#first_sec {
	margin-top: -50px;
	display: flex;
	height: 700px;
}

#user_profile {
	width: 35%;
	display: flex;
	align-items: center;
	flex-direction: column;
}

#user_profile>button {
	margin-top: 30px;
	font-size: 20px;
	outline: none;
}

#user_profile>h2 {
	text-align: center;
	font-weight: bold;
	border: 0;
	margin-bottom: 20px;
}

#user_profile_img {
	width: 300px;
	display: block;
	margin: 0 auto;
	border-radius: 50%;
}

#user_point_box {
	width: 65%;
	height: 270px;
}

#user_point_box>h3 {
	font-weight: bold;
	text-align: center;
}

#standard_point, #point_grade {
	display: flex;
	justify-content: space-between;
	margin: 10px 0px;
}

#standard_point>span, #point_grade>span {
	font-size: 20px;
	font-weight: bold;
}

#standard_point>span:nth-child(2) {
	margin-left: 40px;
}

#point_bar {
	width: 100%;
	height: 100px;
	border-left: 1px solid #555;
	border-right: 1px solid #555;
	position: relative;
	padding-top: 30px;
}

#middle_point {
	width: 50%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0%;
	border-right: 1px solid #555;
}

#gauge_top {
	width: 100%;
	height: 5px;
	background-color: orange;
	margin-bottom: 25px;
}

#gauge_bottom {
	width: ${dto.userPoint/50000*100}%;
	height: 5px;
	background-color: green;
	margin-bottom: 120px;
}

#my_point_box {
	width: 100%;
	height: 250px;
	background-color: orange;
	padding: 20px 0px;
	display: flex;
	position: relative;
}

#my_point_box_left {
	width: 50%;
	height: 100%;
	border-right: 1px solid #666;
	padding: 0px 20px;
	position: relative;
}

#my_point_box_right {
	width: 50%;
	height: 100%;
	padding: 0px 20px;
	position: relative;
}

#my_point_box_left>h3, #my_point_box_right>h3 {
	font-size: 25px;
	font-weight: 900;
}

#my_point {
	font-weight: bold;
	font-size: 50px;
	text-align: center;
	margin-bottom: 30px;
}

.expect_text, .expect_point {
	font-size: 20px;
	font-weight: bold;
	display: flex;
	justify-content: space-evenly;
}

.expect_point {
	margin-left: -25px;
}

#ticket_count, #coupon_count {
	display: flex;
	justify-content: space-evenly;
	font-size: 25px;
	font-weight: bold;
	margin-top: 30px;
}

#coupon_count {
	margin-left: 30px;
}

#point_detail, #coupon_detail {
	position: absolute;
	width: 30px;
	height: 30px;
	background-color: black;
	border-radius: 10px;
	right: 30px;
	top: 20px;
	display: inline;
	cursor: pointer;
	display: flex;
	justify-content: center;
	align-items: center;
}

#point_detail  img, #coupon_detail img {
	width: 30px;
	height: 30px;
}

.section h2 {
	font-weight: bold;
	border-bottom: 3px solid #ddd;
	padding-bottom: 20px;
	position: relative;
	margin-bottom: 50px;
}

.section h2 img {
	position: absolute;
	right: 0;
	width: 30px;
	height: 30px;
	background-color: black;
	border-radius: 7px;
}

.ticketing_poster {
	width: 292px;
	margin-right: 100px;
}

.ticketing_info {
	display: flex;
	flex-direction: column;
	font-weight: bold;
}

.ticketing_info>span:nth-child(1) {
	font-size: 30px;
	margin-bottom: 20px;
}

.ticketing_info>span:nth-child(2) {
	font-size: 50px;
	margin-bottom: 20px;
}

.ticketing_info>span:nth-child(3) {
	font-size: 30px;
	margin-bottom: 35px;
}

.ticketing_info>span:nth-child(4) {
	font-size: 25px;
	margin-bottom: 3px;
}

.ticketing_info>span:nth-child(5) {
	font-size: 25px;
	margin-bottom: 3px;
}

.ticketing_info>span:nth-child(6) {
	font-size: 25px;
	margin-bottom: 30px;
}

.ticketing_info>span:nth-child(7) {
	font-size: 20px;
	margin-bottom: 20px;
}

.second_sec_box {
	display: flex;
	position: relative;
	margin-bottom: 100px;
}

.third_sec_box {
	display: flex;
	position: relative;
	margin-bottom: 100px;
}

.store_poster {
	width: 292px;
	margin-right: 100px;
	background-color: #eee;
}

.store_info {
	display: flex;
	flex-direction: column;
	font-weight: bold;
	padding-top: 60px;
}

.store_info>span:nth-child(1) {
	font-size: 30px;
	margin-bottom: 20px;
}

.store_info>span:nth-child(2) {
	font-size: 20px;
	margin-bottom: 3px;
}

.store_info>span:nth-child(3) {
	font-size: 20px;
}

#fourth {
	display: flex;
	justify-content: space-between;
}

#fourth>div {
	width: 45%;
}

.ticketing_cancel {
	position: absolute;
	font-size: 25px;
	right: 0;
	top: 50%;
}

.question_class, .event_class {
	color: orange;
	font-size: 20px;
	font-weight: bold;
	margin-right: 20px;
}

.question_regdate, .event_regdate {
	font-size: 20px;
	font-weight: bold;
	margin-right: 20px;
}

.question_info, .event_info {
	margin-bottom: 20px;
}

.question_title, .event_title {
	font-size: 20px;
	font-weight: bold;
}

.question_box, .event_box {
	width: 100%;
	margin-bottom: 20px;
	position: relative;
	padding: 30px;
	border: 1px solid #ccc;
}

.answer_check {
	position: absolute;
	right: 10%;
	top: 40%;
}
</style>
<script>
	
	<c:if test="${empty id}">
		location.href="/web_team6/user/userlogin.do";
	</c:if>
	
	</script>
</head>

<body>
	<%@ include file="/inc/header.jsp"%>

	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H" class="home_icon" style="width: 15px"></span>
			<span>&gt;</span> <span>마이페이지</span>
		</div>
	</div>


	<section id="first_sec" class="section">
		<div id="user_profile">
			<h2>반갑습니다. ${dto.userName }님!</h2>
			<img id="user_profile_img" src="/web_team6/asset<c:if test="${dto.userImage==null || dto.userImage==''}">/images/profile.png</c:if><c:if test="${dto.userImage!=null}">${dto.userImage}</c:if> " alt="" style="width: 300px; height:300px;" >
			<button type="button" class="btn btn-primary" onclick="location.href='/web_team6/user/usereditpwcheck.do';">개인정보 수정</button>
		</div>

		<div id="user_point_box">
		<c:if test="${dto.userPoint >50000}">
			<h3 style="font-weight: bold;">VVIP!!</h3>
		</c:if>	
		<c:if test="${dto.userPoint>25000 && dto.userPoint <50000}">
			<h3 style="font-weight: bold;">VVIP까지 ${50000-dto.userPoint} 포인트 남았어요!</h3>
		</c:if>	
		<c:if test="${dto.userPoint <25000 }">
			<h3 style="font-weight: bold;">VIP까지 ${25000-dto.userPoint} 포인트 남았어요!</h3>
		</c:if>	
			<div id="standard_point">
				<span>0</span> <span>25000</span> <span>50000</span>

			</div>
			<div id="point_bar">
				<div id="middle_point"></div>
				<div id="gauge_top"></div>
				<div id="gauge_bottom"></div>

				<div id="my_point_box">
					<div id="my_point_box_left">
						<h3>총 보유 포인트</h3>
						<div id="my_point">${dto.userPoint}점</div>
						<div class="expect_text">
							적립예정 <span style="color: red;">소멸예정</span>
						</div>
						<div class="expect_point">
							0점<span style="color: red;">0점</span>
						</div>
						<div id="point_detail">
							<img src="/web_team6/asset/images/add.png" alt="">
						</div>
					</div>
					<div id="my_point_box_right">
						<h3>관람권/보유 쿠폰</h3>
						<div id="ticket_count">
							관람권 <span>${ticketCount}장</span>
						</div>
						<div id="coupon_count">
							쿠폰 <span>${couponCount}장</span>
						</div>
						<div id="coupon_detail">
							<img src="/web_team6/asset/images/add.png" alt="">
						</div>
					</div>
				</div>
			</div>

			<div id="point_grade">
				<span>일반</span> <span>VIP</span> <span>VVIP</span>
			</div>
		</div>
	</section>


	<section id="second_sec" class="section">
		<h2>
			나의 예매내역<img src="/web_team6/asset/images/add.png" alt="+">
		</h2>
		<c:if test="${tList.size()==0 }">
		
		<div style="width: 100%; height: 300px; text-align: center; padding-top: 100px;">
			<h1>예매내역이 존재하지 않습니다</h1>
		</div>
		</c:if>
		<c:forEach items="${tList}" var="tDto" varStatus="status" > 
		<div class="second_sec_box">

			<div class="ticketing_poster">
				<img style="width: 100%" src="/web_team6/asset/images/${tDto.moviePoster }" alt="">
				<c:if test="${today <tDto.scheduleDate.substring(0,10) }">
				<button class="btn btn-danger ticketing_cancel">예매취소</button>
				</c:if>
			</div>

			<div class="ticketing_info">
				<span>결제일시: ${tDto.ticketingDate}</span> <span>${tDto.movieKorname }</span> <span>${tDto.theaterName }
					/ ${tDto.theaterRoomName } / ${usDto[status.index].seat}</span> <span>${tDto.scheduleDate}</span><span>${tDto.scheduleTime.substring(0,5)}</span> <span>${usDto[status.index].seatValue}</span>
			</div>
		</div>
		</c:forEach>
	</section>

	<section id="third_sec" class="section">
		<h2>
			나의 구매내역<img src="/web_team6/asset/images/add.png" alt="">
		</h2>
		
		<c:if test="${shList.size()==0 }">
		
		<div style="width: 100%; height: 300px; text-align: center; padding-top: 100px;">
			<h1>구매내역이 존재하지 않습니다</h1>
		</div>
		
		</c:if>
		
		<c:forEach items="${shList}" var="dto">
		<div class="third_sec_box">

			<div class="store_poster">
				<img src="/web_team6/asset/images/${dto.itemImage}" alt="" style="width: 100%">
			</div>

			<div class="store_info">
				<span>${dto.itemName }</span> <span>${dto.storeHistoryRegdate.substring(0,10)}</span> <span>${dto.storeHistoryCount}개</span>
			</div>
		</div>
		</c:forEach>
	</section>



	<section id="fourth" class="section">
		<div>
			<h2>
				나의 문의내역<img src="/web_team6/asset/images/add.png" alt="">
			</h2>

			<div class="question_box">
				<div class="question_info">
					<span class="question_class">1:1문의</span><span
						class="question_regdate">2021/07/24 03:33</span>
				</div>
				<span class="question_title">예매관련하여 문의 드립니다.</span>

				<button type="button" class="btn btn-success answer_check">답변완료</button>

			</div>

			<div class="question_box">
				<div class="question_info">
					<span class="question_class">1:1문의</span><span
						class="question_regdate">2021/07/24 03:33</span>
				</div>
				<span class="question_title">예매관련하여 문의 드립니다.</span>
				<button type="button" class="btn btn-success answer_check">답변완료</button>

			</div>



		</div>

		<div>
			<h2>
				나의 참여내역<img src="/web_team6/asset/images/add.png" alt="">
			</h2>

			<div class="event_box">
				<div class="event_info">
					<span class="event_class">이벤트</span><span class="event_regdate">2021/07/24
						03:33</span>
				</div>
				<span class="event_title">콰이어트플레이스2-이벤트</span>
			</div>
		</div>
	</section>


	<div style="margin-top: 100px"></div>


	<%@ include file="/inc/footer.jsp"%>
	
	
</body>
</html>
