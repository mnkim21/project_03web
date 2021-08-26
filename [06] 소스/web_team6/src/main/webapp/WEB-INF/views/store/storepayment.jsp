<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어_결제하기</title>
<%@ include file="/inc/asset.jsp"%>
<%@include file="/inc/store.jsp"%>
<%@ include file="/inc/header_white.jsp"%>


<style>
</style>
<script>

if(${empty id}){
	location.href='/web_team6/user/userlogin.do';
}

</script>

</head>
<body>


	<%@ include file="/inc/header.jsp"%>
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H" class="home_icon" style="width: 15px; height: 15px"></span>
			<span>&gt;</span> <span>스토어</span><span>&gt;</span> <span>결제</span>
		</div>
	</div>

	<div class="container">
		<h1 class="page-header"></h1>
	</div>
	<div id="store_contents">
		<div class="store_payment">
			<h2 class="store_title">결제하기</h2>
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
						<tr>
							<td class="store_itemlist" colspan="2">
								<div class="store_item_image">
									<img
										src="/web_team6/asset/images/${dto.itemImage}">
								</div>
								<div class="store_pay_info">
									<p class="store_pay_title">
										<b>${dto.itemName}</b>
									</p>
									
								</div>
							</td>


							<td>
								<div class="store_pay_info">
									<a href="#">사용가능극장</a>
								</div>
							</td>

							<td>
								<div class="store_pay_info" style="font-size: 1.2em;">
									<b>1</b>
								</div>
							</td>

							<td>
								<div class="store_pay_info"
									style="font-size: 1.2em; color: blue;">
									<b>${dto.itemPrice }원</b>
								</div>
							</td>
						</tr>
					</tbody>

				</table>
			</div>
		</div>
	</div>


	<div class="store_btn">
		<button type="button" class="btn btn-default"
			onclick="location.href='/web_team6/store/storeview.do';">돌아가기</button>
		<button type="submit" class="btn btn-primary"
			onclick="payment()">결제하기</button>

	</div>

	<%@ include file="/inc/footer.jsp"%>
	<script>
	function payment(){
	
		var count = $('#store_contents > div > div > table > tbody > tr > td:nth-child(3) > div > b').text();
		
		location.href='/web_team6/store/storepaymentok.do?itemSeq=${dto.itemSeq}&count='+count;
	}
	
	
		
	</script>
</body>
</html>