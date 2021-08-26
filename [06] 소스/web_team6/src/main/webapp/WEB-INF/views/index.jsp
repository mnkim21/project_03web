<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FilmMoA</title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_black.jsp"%>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

<style>
.poster_button {
	position: relative;
	z-index: 3;
	bottom: 10px;
	left: -300px;
	font-size: 20px;
	width: 120px;
}

#carousel-example-generic {
	margin-bottom: 150px;
}

#popular_movie {
	width: 100%;
	background-color: rgb(198, 234, 229);
	padding-top: 50px;
	margin-bottom: 150px;
}

#popular_movie_in {
	width: 1400px;
	margin: 0 auto;
}

#popular_movie_in>h2, #show_event_in>h2 {
	text-align: center;
	font-weight: 1000;
}

#popular_list {
	margin: 0 auto;
	width: 1200px;
	height: 600px;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

.popular_poster {
	width: 270px;
	height: 450px;
	position: relative;
}

.popular_poster>img {
	width: 270px;
	height: 383px;
	margin-bottom: 15px;
	border-radius: 5px;
}

.popular_overlay {
	position: absolute;
	width: 270px;
	height: 383px;
	background-color: rgba(1, 1, 1, 0.8);
	left: 0px;
	top: 0px;
	opacity: 0;
	border-radius: 5px;
	color: white;
	padding: 20px;
}

.popular_overlay:hover {
	opacity: 1;
}

.popular_ticketing {
	width: 150px;
	font-size: 18px;
	font-weight: bold;
}

.popular_detail {
	width: 100px;
	font-size: 18px;
	font-weight: bold;
	border: 1px solid #ccc;
}

.popular_button_box {
	width: 100%;
	display: flex;
	justify-content: space-between;
}

.popular_movie_name {
	text-align: center;
	margin-bottom: 20px;
	font-size: 19px;
	font-weight: 700;
	color: skyblue;
}

.popular_movie_summary {
	text-align: justify;
}

.popular_movie_rating {
	position: absolute;
	bottom: 0;
	margin-bottom: 20px;
}

#show_event {
	width: 100%;
	background-color: rgb(44, 62, 80);
	padding-top: 50px;
}

#show_event_in {
	width: 1400px;
	color: white;
	margin: 0 auto;
}

#event_list_box {
	height: 1050px;
	padding-top: 100px;
}

#event_lg {
	display: flex;
	justify-content: space-evenly;
	margin-bottom: 60px;
}

#event_lg>img {
	width: 400px;
	height: 400px;
	border-radius: 10px;
}

#event_sm {
	display: flex;
	justify-content: space-evenly;
}

#event_sm>img {
	width: 250px;
	height: 300px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>


	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			<li data-target="#carousel-example-generic" data-slide-to="5"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/web_team6/asset/images/movie_poster1.jpg" alt="..." />
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img src="/web_team6/asset/images/movie_poster2.jpg" alt="..." />
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img src="/web_team6/asset/images/movie_poster3.jpg" alt="..." />
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img src="/web_team6/asset/images/movie_poster4.jpg" alt="..." />
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img src="/web_team6/asset/images/movie_poster5.jpg" alt="..." />
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item">
				<img src="/web_team6/asset/images/movie_poster6.jpg" alt="..." />
				<div class="carousel-caption">
				</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev" style="z-index: 1"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next" style="z-index: 1"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<section id="popular_movie">
		<div id="popular_movie_in">
			<h2>최신영화</h2>

			<div id="popular_list">
				<c:forEach items="${mList}" var="dto">
					<div>
						<div class="popular_poster">
							<img src="/web_team6/asset/images/${dto.moviePoster}"
								alt="poster">
							<div class="popular_overlay">
								<div class="popular_movie_name">${dto.movieKorName }</div>
								<p class="popular_movie_summary">${dto.movieStory }</p>
								<div class="popular_movie_rating">
									감독: ${dto.movieDirector } <br />
									주연배우: ${dto.movieActor }
								</div>
							</div>
							<div class="popular_button_box">
								<button type="button" class="btn btn-group popular_detail">상세보기</button>
								<button type="button" class="btn btn-primary popular_ticketing" onclick="location.href='/web_team6/ticketing/ticketing1.do'">예매</button>
							</div>
						</div>
					</div>
				</c:forEach>
				
			</div>
		</div>
	</section>


	<section id="show_event">
		<div id="show_event_in">
			<h2>이벤트</h2>

			<div id="event_list_box">

				<div id="event_lg">
					<c:forEach items="${bigEvent}" var="bEvent">
					<img src="${bEvent.eventthumbnail }" alt="">
					</c:forEach>

				</div>

				<div id="event_sm">
					<c:forEach items="${smallEvent}" var="sEvent">
					<img src="${sEvent.eventthumbnail }" alt="">
					</c:forEach>

				</div>


			</div>



		</div>
	</section>

	<div style="margin-top: 150px"></div>




	<%@ include file="/inc/footer.jsp"%>
	<script>
		$(function() {
			// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
			$('#carousel-example-generic').carousel({
				// 슬리아딩 자동 순환 지연 시간
				// false면 자동 순환하지 않는다.
				interval : 5000,
				// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
				pause : 'hover',
				// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
				wrap : true,
				// 키보드 이벤트 설정 여부(?)
				keyboard : true,
			});
		});
	</script>
</body>
</html>
