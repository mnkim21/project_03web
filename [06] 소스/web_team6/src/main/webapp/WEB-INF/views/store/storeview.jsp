<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어-상세보기</title>
<%@include file="/inc/asset.jsp"%>
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
	padding-top: 0px
}
</style>



</head>
<body>

	<!-- storeview.jsp -->

	<%@ include file="/inc/header.jsp"%>

	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px; height: 15px"></span> <span>&gt;</span>
			<span>스토어</span><span>&gt;</span> <span id="where_itemClass"></span>
		</div>
	</div>

	<div id="store_contents">
		<div class="store_payment">
			<c:forEach var="dto" items="${itemList}">
				<h1 class="page-header">
					${dto.itemClass}
					<h2 class="store_subtitle" style="margin-bottom: 30px;">
						<span><b>${dto.itemName}</b></span>
					</h2>
				</h1>
		</div>

		<div class="store_info_padding"></div>

		<div class="store_item_box">
			<div class="left">
				<img src="/web_team6/asset/images/${dto.itemImage}" alt="팝콘이미지">
			</div>
			<div class="right">
				<table class="table">
					<tr rowspan="2">
						<th>사용극장</th>
						<td><a onclick="openPop();" style="cursor: pointer;">상품이용안내 확인</a> <br> <span
							style="color: red;">※ 일부 지점 사용 불가하오니 반드시 확인하시기 바랍니다.</span></td>
						<td></td>
					</tr>
					<tr>
						<th>유효기간</th>
						<td><b style="color: red;">2021 - 12 - 31</b></td>
					</tr>
					<tr>
						<th>원산지</th>
						<c:choose>
							<c:when test="${dto.itemClass == '팝콘'}">
								<td>원산지 :팝콘: 옥수수-미국산</td>
							</c:when>
							<c:otherwise>
								<td>해당없음</td>
							</c:otherwise>
						</c:choose>

					</tr>
					<tr>
						<th>판매 수량</th>
						<td>${dto.itemCount}개<br> 1회 1개 구매가능 | 1인 1개 구매가능
						</td>
					</tr>
					<tr>
						<th>구매 후 취소</th>
						<td><b style="color: red;"> 구매 후 취소가 불가한 상품입니다.</b></td>
					</tr>

					<tr>
						<th>금액</th>
						<td>${dto.itemPrice}원</td>
					</tr>
				</table>

				<div class="store_btn">
					<button type="button" class="btn btn-default"
						style="cursor: pointer;"
						onclick="location.href='/web_team6/store/storepresent.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';">
						선물하기</button>

					<button type="button" class="btn btn-primary"
						style="cursor: pointer;"
						onclick="purchase();">결제하기</button>
				</div>
			</div>



		</div>



		<div class="store_info_padding"></div>
		<hr>
		<div class="store_info_padding"></div>


		<div class="store_box">




			<c:choose>
				<c:when test="${dto.itemClass == '팝콘'}">
					<span class="store_title">갓 튀겨내 따끈한,<br>옥수수 본연의 맛을 즐길 수
						있는 팝콘
					</span>
				</c:when>
				<c:when test="${dto.itemClass == '음료'}">
					<span class="store_title">시원하게 톡톡터지는 짜릿한 탄산의 맛!</span>
				</c:when>
				<c:when test="${dto.itemClass == '티켓'}">
					<span class="store_title">영화는 Moda? FilmMoa다!<br>저희
						FilmMoa와 즐거운 관람 되세요!
					</span>
				</c:when>
				<c:when test="${dto.itemClass == '세트'}">
					<span class="store_title"> 가족, 친구, 연인과<br>그리고 저희
						FilmMoa와 함께하세요!
					</span>
				</c:when>
				<c:otherwise>
					<td>해당없음</td>
				</c:otherwise>
			</c:choose>


		</div>

		</c:forEach>
		<div class="store_info_padding"></div>


		<div class="store_info_content">
			<h3 class="store_info_title">* 상품 이용 안내</h3>
			<div class="store_item_info">
				<table>
					<tr>
						<ul>- 본 상품은 일부지점에서 사용 불가하니 사용 가능지점을 확인 후 이용 부탁드립니다.
						</ul>
						<ul>- 본 상품의 사용 기한은 구매일로부터 92일까지입니다.
						</ul>
						<ul>- 본 상품은 구매일로부터 7일 이내 취소 가능합니다.
						</ul>
						<ul>- 구매한 상품은 "마이페이지 > 스토어 구매내역"에서 확인할 수 있습니다.
						</ul>
						<ul>- 팝콘의 크기, 맛, 종류 변경이 불가합니다 - 상기 이미지는 실제 제품과 다를 수 있습니다.
						</ul>
						<ul>- 각 지점 별 매점 운영시간까지 교환 가능합니다.
						</ul>
					</tr>
				</table>

			</div>
		</div>


		<div class="store_info_padding"></div>


		<div class="store_info_content">
			<h3 class="store_info_title">* 구매 후 취소</h3>
			<div class="store_item_info">
				<table>
					<tr>
						<ul>
							<b style="color: red;"> * 교환 가능 지점을 반드시 확인 하신 후 구매하시기 바랍니다. </b>
						</ul>
						<br>
					<tr>
						<ul>연장/취소/환불 안내
						</ul>
					</tr>

					<ul>
						- 본 상품은 구매일로부터 7일 이내 구매 취소 가능합니다.
						<br>(앱/웹 내 구매내역에서 취소 가능)
					</ul>

					<ul>- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의
						시간이 소요될 수 있습니다. (접수처: 홈페이지내 1:1문의)

					</ul>
					<ul>- 환불 요청한 포인트 중 소멸 포인트가 포함되어있다면 환불 요청한 월의 말일까지 사용 가능한 포인트로
						돌아갑니다.
					</ul>
					<ul>- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
					</ul>

					</tr>
				</table>

			</div>
		</div>


	</div>
	</div>


	<div class="store_info_padding"></div>




	<div class="store_info_padding"></div>

	<%@ include file="/inc/footer.jsp"%>

	<script>
		function openPop() {
			window.open(
					'http://localhost:8090/web_team6/store/storetheater.do',
					'사용가능극장',
					'width=450, height=350, scrollbars=no, resizable=no')
		}
		
		
		function purchase(){
			
			var price= $('#store_contents > div.store_item_box > div.right > table > tbody > tr:nth-child(6) > td').text();
			
			location.href='/web_team6/store/storepurchase.do?itemSeq=${itemSeq}&price='+price;
			
		}
		
		
		$('#where_itemClass').text($('#store_contents > div.store_payment > h1').text());
		
		
		
		
		
	</script>
</body>
</html>