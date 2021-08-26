<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>123213</title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>


<style>


.subtitle1,.subtitle2,.subtitle3{

margin-left : 10px;
 font-size : 40px;
  font : bold;

}



#movie_main section {
	width: 1400px;
	margin: 0 auto;
	margin-bottom: 100px;
}

#movie_main section>h1 {
	border-bottom: 3px solid #ddd;
	margin-bottom: 70px;
}

.movie_container {
	margin: 0 auto;
	width: 80%;
	padding: 20px;
	position: relative;
}

div[class*=movie_box] img {
	width: 230px;
	height: 326px;
}

div[class*=movie_box] {
	margin-right: 30px;
	display: flex;
	flex-direction: column;
	transform: translate(0px, 0px);
	transition: all 1s;
}

.movie_title, .movie_genre {
	font-size: 15px;
	font-weight: bold;
	margin: 5px 0px;
}

.movie_title {
	height: 40px;
}

.btn_box {
	display: flex;
	justify-content: space-between;
}

.btn_box button {
	width: 40%;
}

.overflow {
	display: flex;
	justify-content: space-between;
	overflow: hidden;
}
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px; height: 15px"></span> <span>&gt;</span>
			<span>영화목록</span>
		</div>
	</div>

	<div id="movie_main">

		<section id="first_sec">
			         <h3 class="subtitle1" margin-right : 10px;><i class="fas fa-video"></i>이달의영화</h3>
			<div class="movie_container">
				<img class="prev1" alt=""
					src="/web_team6/asset/images/arrow-left-circle.svg"
					style="position: absolute; left: -10%; top: 45%; width: 50px;">
				<div class="overflow">

					<c:forEach items="${thisMonthList}" var="dto">
						<div class="movie_box1">
							<img alt="" src="/web_team6/asset/images/${dto.moviePoster}">
							<span class="movie_title">영화제목: ${dto.movieKorName}</span> <span
								class="movie_genre">장르: ${dto.movieGenre}</span>
								<span class="movie_open">개봉일:${dto.movieOpen.substring(0,10)}</span>
								
							<div class="btn_box">
								<button class="movie_defail btn btn-primary" type="button" onclick='detail(${dto.movieSeq})'>상세</button>
								<button class="movie_defail btn btn-primary" type="button" onclick='buy()'>예매</button>
							</div>
						</div>
					</c:forEach>

				</div>
				<img class="next1" alt=""
					src="/web_team6/asset/images/arrow-right-circle.svg"
					style="position: absolute; right: -10%; top: 45%; width: 50px;">
			</div>
		</section>

		<section id="second_sec">
		         <h3 class="subtitle1" margin-right : 10px;><i class="fas fa-video"></i>현재상영영화</h3>


			<div class="movie_container">
				<img class="prev2" alt=""
					src="/web_team6/asset/images/arrow-left-circle.svg"
					style="position: absolute; left: -10%; top: 45%; width: 50px;">
				<div class="overflow">
				
					<c:forEach items="${playingList}" var="dto">
						<div class="movie_box2">
							<img alt="" src="/web_team6/asset/images/${dto.moviePoster}">
							<span class="movie_title">영화제목: ${dto.movieKorName}</span> 
							<span class="movie_genre">장르:${dto.movieGenre}</span>
							<span class="movie_open">개봉일:${dto.movieOpen.substring(0,10)}</span>
							<div class="btn_box">
								<button class="movie_defail btn btn-primary" type="button" onclick='detail(${dto.movieSeq})'>상세</button>
								<button class="movie_defail btn btn-primary" type="button" onclick='buy()'>예매</button>
							</div>
						</div>
			</c:forEach>
								
								
																

				</div>
				<img class="next2" alt=""
					src="/web_team6/asset/images/arrow-right-circle.svg"
					style="position: absolute; right: -10%; top: 45%; width: 50px;">
			</div>


		</section>



		<section id="third_sec">
		         <h3 class="subtitle1" margin-right : 10px;><i class="fas fa-video"></i>상영예정영화</h3>
			<div class="movie_container">
				<img class="prev3" alt=""
					src="/web_team6/asset/images/arrow-left-circle.svg"
					style="position: absolute; left: -10%; top: 45%; width: 50px;">
				<div class="overflow">
				
					<c:forEach items="${expectList}" var="dto">
						<div class="movie_box3">
							<img alt="" src="/web_team6/asset/images/${dto.moviePoster }">
							<span class="movie_title">영화제목: ${dto.movieKorName}</span>
								 <span class="movie_genre">장르: 	${dto.movieGenre }</span>
								<span class="movie_open">개봉일:${dto.movieOpen.substring(0,10)}</span>
							<div class="btn_box">
								<button class="movie_defail btn btn-primary" type="button" onclick='detail(${dto.movieSeq})'>상세</button>								
							</div>
						</div>
					</c:forEach>
				</div>
				<img class="next3" alt="" src="/web_team6/asset/images/arrow-right-circle.svg" style="position: absolute; right: -10%; top: 45%; width: 50px;">
					
					
			</div>
		</section>
	</div>
							
								


	<%@ include file="/inc/footer.jsp"%>
	<script>
	
    //영화상세보기
    function detail(movieseq){
       window.location.href = '/web_team6/movie/movieview.do?movieseq='+movieseq;            
       
    }
    
    //영화예매하기
    function buy(ticketingseq){
       
       window.location.href=
          '/web_team6/ticketing/ticketing1.do';
       
    }

	
		var n1 = 0;
		var max1 = -(260*${thisMonthList.size()})+1080;
		
		$('.prev1').click(function() {
			if (n1 != 0) {
				n1 += 260;
			}
			$('.movie_box1').css('transform', "translate(" + n1 + "px, 0px)");
		});

		$('.next1').click(function() {
			
			if(n1>max1){
			n1 -= 260;
			}
			$('.movie_box1').css('transform', "translate(" + n1 + "px, 0px)");
			console.log(n1);

		});

		var n2 = 0;
		var max2 = -(260*${playingList.size()})+1080;
		$('.prev2').click(function() {
			if (n2 != 0) {
				n2 += 260;
			}
			$('.movie_box2').css('transform', "translate(" + n2 + "px, 0px)");
		});

		$('.next2').click(function() {
			if(n2>max2){
			n2 -= 260;
			}
			$('.movie_box2').css('transform', "translate(" + n2 + "px, 0px)");

		});

		var n3 = 0;
		var max3 = -(260*${expectList.size()})+1080;
		$('.prev3').click(function() {
			if (n3 != 0) {
				n3 += 260;
			}
			$('.movie_box3').css('transform', "translate(" + n3 + "px, 0px)");
		});

		$('.next3').click(function() {
			if(n3>max3){
			n3 -= 260;
			}
			$('.movie_box3').css('transform', "translate(" + n3 + "px, 0px)");

		});
	</script>
</body>
</html>


