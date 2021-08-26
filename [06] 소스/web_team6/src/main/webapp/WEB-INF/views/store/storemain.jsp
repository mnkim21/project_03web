<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어-메인</title>


<%@include file="/inc/asset.jsp"%>
<%@include file="/inc/store.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px; height: 15px"></span> <span>&gt;</span>
			<span>스토어</span>
		</div>
	</div>



	<div class="container">
		<h1 class="page-header">Store</h1>
		<div class="store_main_image">
			<img src="/web_team6/asset/images/storemain.jpg"
				style="width: 770px; height: 500px;">
		</div>


		<div class="store_info_padding"></div>

		<div class="store_best_item">
			<h1 class="page-header">
				Best 4 <small><b style="color: blueviolet">${dto.userName}님에게</b>&nbsp;추천드리고
					싶어요!</small>
				<div style="float: right;">
					<small><b><a href="#!">더보기</b></a></small>
				</div>
			</h1>


			<div class="store_info_padding"></div>


			<div class="row">
				<div class="col-md-3">
					<div class="thumbnail">
						<img src="/web_team6/asset/images/popcorn.png" alt="기본팝콘">
						<div class="caption">
							<h3 class="store_number">제품이름끌어오기</h3>
							<p class="store_info">내용끌어오기</p>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="thumbnail">
						<img src="/web_team6/asset/images/popcorn.png" alt="기본팝콘">
						<div class="caption">
							<h3 class="store_number">제품이름끌어오기</h3>
							<p class="store_info">내용끌어오기</p>
						</div>
					</div>
				</div>


				<div class="col-md-3">
					<div class="thumbnail">
						<img src="/web_team6/asset/images/popcorn.png" alt="기본팝콘">
						<div class="caption">
							<h3 class="store_number">제품이름끌어오기</h3>
							<p class="store_info">내용끌어오기</p>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="thumbnail">
						<img src="/web_team6/asset/images/popcorn.png" alt="기본팝콘">
						<div class="caption">
							<h3 class="store_number">제품이름끌어오기</h3>
							<p class="store_info">내용끌어오기</p>
						</div>
					</div>
				</div>

			</div>

		</div>


		<hr>



		<!-- 팝콘화면 -->


		<div class="store_info_padding"></div>


		<div class="store_best_item">
			<h1 class="page-header">
				팝콘
				<div style="float: right;">
					<small><b><a
							href="/web_team6/store/storelist.do?itemClass=팝콘">더보기</b></a></small>

				</div>
			</h1>


			<div class="store_info_padding"></div>

			<div class="row">

				<c:forEach items="${popList}" var="dto" end="3">

					<div class="col-md-3">
						<div class="thumbnail">
							<!--<img src="${pageContext.request.contextPath}/${dto.itemImage}"  -->
							<img src="/web_team6/asset/images/${dto.itemImage}" alt="팝콘이미지"
								style="cursor: pointer;"
								onclick="location.href='storeview.do?itemClass=${dto.itemClass}&itemSeq=${dto.itemSeq}';">


							<div class="caption">
								<h3 class="store_number">${dto.itemName}</h3>
								<hr>
								<p class="store_info">${dto.itemPrice} 원</p>
								
							</div>
						</div>
					</div>

				</c:forEach>

			</div>


			<hr>

			<!-- 음료화면 -->


			<div class="store_info_padding"></div>

			<div class="store_best_item">
				<h1 class="page-header">
					음료
					<div style="float: right;">
						<small><b><a
								href="/web_team6/store/storelist.do?itemClass=음료">더보기</b></a></small>
					</div>
				</h1>


				<div class="store_info_padding"></div>


				<div class="row">
					<c:forEach items="${drinkList}" var="dto" end="3">
						<div class="col-md-3">
							<div class="thumbnail">
								<img src="/web_team6/asset/images/${dto.itemImage}" alt="음료이미지"
								style="cursor: pointer;"
								onclick="location.href='storeview.do?itemClass=${dto.itemClass}&itemSeq=${dto.itemSeq}';">
								<div class="caption">
									<h3 class="store_number">${dto.itemName}</h3>
									<p class="store_info">${dto.itemPrice} 원</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

			</div>


			<hr>

			<!-- 티켓화면 -->

			<div class="store_info_padding"></div>

			<div class="store_best_item">
				<h1 class="page-header">
					티켓
					<div style="float: right;">
						<small><b><a
								href="/web_team6/store/storelist.do?itemClass=티켓">더보기</b></a></small>
					</div>
				</h1>


				<div class="store_info_padding"></div>


				<div class="row">
					<c:forEach items="${ticketList}" var="dto" end="3">
						<div class="col-md-3">
							<div class="thumbnail">

								<img src="/web_team6/asset/images/${dto.itemImage}"
									alt="영화관람권이미지"
									style="cursor: pointer;"
								onclick="location.href='storeview.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';">
								<div class="caption">
									<h3 class="store_number">${dto.itemName}</h3>
									<p class="store_info">${dto.itemPrice} 원</p>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>

				<hr>



				<!-- 세트 -->


				<div class="store_info_padding"></div>

				<div class="store_best_item">
					<h1 class="page-header">
						세트
						<div style="float: right;">
							<small><b><a
									href="/web_team6/store/storelist.do?itemClass=세트">더보기</b></a></small>
						</div>
					</h1>


					<div class="store_info_padding"></div>


					<div class="row">
						<c:forEach items="${setList}" var="dto" end="3">
							<div class="col-md-3">
								<div class="thumbnail">
									<img src="/web_team6/asset/images/${dto.itemImage}" alt="세트이미지"
									style="cursor: pointer;"
								onclick="location.href='storeview.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';">
									<div class="caption">
										<h3 class="store_number">${dto.itemName}</h3>
										<p class="store_info">${dto.itemPrice} 원</p>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>

				</div>

				<div class="store_info_padding"></div>
			</div>
		</div>
	</div>


	<%@ include file="/inc/footer.jsp"%>
</body>
</html>
