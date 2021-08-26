<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어-선물하기</title>
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

	<!-- template.jsp > storepresent.jsp -->
	<%@ include file="/inc/header.jsp"%>


	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px; height: 15px"></span> <span>&gt;</span>
			<span>스토어</span><span>&gt;</span> <span>선물하기</span>
		</div>
	</div>



	<div id="store_contents">
		<div class="store_payment">
			<h2 class="store_title">선물하기</h2>
			<h3 class="store_subtitle">주문상품정보</h3>

			<div class="store_table">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="store_table_title" colspan="2" style="width: 60%;">주문상품</th>
							<th class="store_table_title" style="width: 16%;">사용가능처</th>
							<th class="store_table_title" style="width: 12%;">구매수량</th>
							<th class="store_table_title">총 상품금액</th>
						</tr>
					</thead>


					<tbody>
						<c:forEach var="dto" items="${itemList}">
							<tr>
								<td class="store_itemlist" colspan="2">
									<div class="store_item_image">
										<img src="/web_team6/asset/images/${dto.itemImage}"
											alt="${dto.itemImage}이미지">
									</div>
									<div class="store_pay_info">
										<p class="store_pay_title">
											<a href='#' onclick='history.back();'
											 title="${dto.itemName}">${dto.itemName}</a>
										</p>
										<!-- <p class="store_pay_subtitle">4주차특가_카라멜팝콘L</p> -->
									</div>
								</td>


								<td>
									<div class="store_pay_info">
										<a href="#">사용가능극장</a>
									</div>
								</td>

								<td>
									<div class="store_pay_info" style="font-size: 1.2em;">
										<b>1개</b>
									</div>
								</td>

								<td>
									<div class="store_pay_info"
										style="font-size: 1.2em; color: blue;">
										<b>${dto.itemPrice }원
											
										</b>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>

			</div>


			<hr style="border: 1px dotted gray;">

			<div class="store_payment">
				<h2 class="store_prsent_title">선물 메시지</h2>
				<h3 class="store_subtitle">고마운분께 마음을 전하세요!</h3>

				<form>
					<div class="store_table">
						<table class="table table-bordered">
							<tr>
								<th class="store_table_title">받는 분</th>
								<th class="store_table_title">수량, 휴대번호</th>
								<th class="store_table_title">선물 메시지(0자/70자이내)</th>

							</tr>
							<tr>
								<td><input type="text" maxlength="10" class="form-control">
								</td>
								<td><input type="text" maxlength="13" class="form-control">
								</td>
								<td><textarea placeholder="전달하고싶은 메시지를 입력해주세요."></textarea>
								</td>
							</tr>

						</table>

					</div>
			</div>

		</div>
		<div class="store_btn">
			<button type="button" class="btn btn-default"
				onclick="history.back();">돌아가기</button>
			<button type="submit" class="btn btn-primary" 
				onclick="location.href='/web_team6/store/storepurchase.do?itemClass=${dto.itemClass}&&itemSeq=${dto.itemSeq}';">결제하기</button>
		</div>

		</form>
	</div>





	<%@ include file="/inc/footer.jsp"%>

	<script>
		
	</script>
</body>
</html>