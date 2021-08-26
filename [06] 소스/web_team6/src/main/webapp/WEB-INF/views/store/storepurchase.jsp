<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어_결제하기2</title>
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


	<div id="store_contents">
		<div class="store_payment">
			<h2 class="store_title" style="margin-bottom: 100px">결제</h2>

			<h3 class="store_subtitle">
				<b>쿠폰</b>
			</h3>
			<span><small>사용할 쿠폰을 선택해주세요.</small></span>
			<hr />

			<div class="store_box">
				<!-- Single button -->
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false"
						style="width: auto; height: auto">
						쿠폰을 선택해 주세요. <span class="caret"> </span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#!">보유한쿠폰을 끌고오기</a></li>
					</ul>
				</div>

				<div class="store_btn">
					<button type="button" class="btn btn-primary">적용하기</button>
				</div>
			</div>

			<div class="store_info_padding"></div>

			<h3 class="store_subtitle">
				<b>멤버십 포인트</b>
			</h3>
			<span><small>사용할 포인트를 입력 해주세요.</small></span>
			<hr />

			<div class="store_box">
				<input type="text" style="width: 35%" placeholder="사용할 포인트를 입력해주세요." />점
				/<small>보유 포인트 : ~~~점 가져오기 </small>

				<div class="store_btn">
					<button type="button" class="btn btn-primary">적용하기</button>
				</div>
			</div>
		</div>

		<div class="store_info_padding"></div>

		<h3 class="store_subtitle">
			<b style="margin-right: 110px;">최종 결제 금액</b><span>${price}</span>
		</h3>
		<span><small>결제 수단을 선택 해 주세요.</small></span>
		<hr />

		<div class="store_box"></div>

		<h3 class="store_subtitle">
			<b>주문 동의</b>
		</h3>
		<hr />
		<div class="store_info_padding">
			<div class="store_box">
				<input type="checkbox" required /> <span style="color: red"><small><b>주문하실
							상품, 가격, 배송정보, 할인정보 등을 확인하였으며, <br>구매에 동의하시겠습니까?</b></small></span>
			</div>
		</div>

		<div class="store_btn">
			<button type="button" class="btn btn-default"
				onclick="location.href='/web_team6/store/storemain.do';">돌아가기</button>
			<button type="button" class="btn btn-primary" onclick="purchase()">결제하기</button>
		</div>
	</div>
	</form>



	<%@ include file="/inc/footer.jsp"%>
	<script>
	
	
	function purchase(){
		
		if(${empty id}){
		location.href='/web_team6/user/userlogin.do';
		}else{
		location.href='/web_team6/store/storepayment.do?itemSeq=${itemSeq}'
		}
	}
	
	</script>
</body>
</html>
