<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어_제품군 리스트</title>
<%@ include file="/inc/asset.jsp"%>
<%@include file="/inc/store.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>
#search_icon {
	width: 20%;
	height: 30px;
	background-color: #eee;
	outline: none;
	border: none;
	cursor: pointer;
	border: 1px solid #bbb;
	box-sizing: border-box;
	display: flex;
}

#search_icon img {
	width: 23px;
	height: 23px;
}

#store_contents {
	padding-bottom: 0px
}
</style>
</head>
<body>



	<!-- storelist.jsp -->

	<%@ include file="/inc/header.jsp"%>



	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px; height: 15px"></span> <span>&gt;</span>
			<span>스토어</span>
		</div>
	</div>


	<div id="store_contents">
		<div class="store_payment">
			<h1 class="page-header">${param.itemClass}
				<h2 class="store_subtitle" style="margin-bottom: 30px;">
					총 <span style="color:grey;">${totalCount }개</span>의 제품이 있습니다.
				</h2>
			</h1>


			

			<%-- 	<h2 class="store_title" style="margin-bottom: 30px;">${param.itemClass }
				/ ${totalCount } / ${maxPage }</h2> --%>



			<div class="row">
				<c:forEach items="${list}" var="dto">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="/web_team6/asset/images/${dto.itemImage}"
								alt="${dto.itemClass}" name="store_image" style="cursor: pointer;"
								onclick="location.href='/web_team6/store/storeview.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';">
							<div class="caption">
								<h3 class="store_number">${dto.itemName}</h3>
								<hr>
								<p class="store_info">${dto.itemPrice}원</p>
								<div class="store_btn">
									<a href="/web_team6/store/storepurchase.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';"
										class="btn btn-primary" role="button">구매하기</a> 
											
										
										<a
										href="/web_team6/store/storepresent.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';"
										class="btn btn-default" role="button">선물하기</a>
								</div>

							<%-- 	style="cursor: pointer;"
								onclick="location.href='storeview.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';">
 --%>

							</div>
						</div>
					</div>
				</c:forEach>


			</div>

			<div class="store_padding"></div>




			<nav>
				<div class="text-center">
					<ul class="pagination">



						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>

						<c:forEach var="pn" begin="1" end="${maxPage}">
							<li><a
								href="storelist.do?itemClass=${param.itemClass}&pageNum=${pn}">${pn}</a></li>
						</c:forEach>



						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</div>
			</nav>


		</div>


		<div style="margin-top: 150px;"></div>

		<%@ include file="/inc/footer.jsp"%>



		<script>
			/* 마우스 호버이벤트 */
			/* 	window.document.all.store_image.onmouseover = function() {

				}; */
			/* 클릭 이벤트 */
			/* var store_image = document.getElementByName('store_image');
			
			store_image.onclick = function(){
				alert("클릭했어");
				
			}; */
		</script>
</body>
</html>













