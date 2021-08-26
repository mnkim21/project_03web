<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어-제품 등록 하기</title>
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
      #search_icon img{
      	width: 23px;
      	height: 23px;
      }
</style>

</head>
<body>

	<!-- template.jsp > storeadd.jsp -->

	<%@ include file="/inc/header.jsp"%>


	<section class="main-section">



		<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px; height: 15px"></span> <span>&gt;</span> <span>관리자</span><span>&gt;</span>
			<span>등록하기</span>
		</div>
	</div>


		<div id="store_contents">
			<div id="store_payment">
				<h2 class="store_title">
					Store <small>메뉴추가하기</small>
				</h2>
			</div>



			<!-- 파일첨부하는 거 체크 해야 함 -->
		<form action="storeaddok.do" method="post" enctype="multipart/form-data">
			<table class="table table-bordered">

				<tr>
					<th style="width: 35%;">제품분류</th>
					<td><select name="itemClass" id="itemClass"
						class="form-control" style="width: auto;">
							<option value="팝콘">팝콘류</option>
							<option value="음료">음료류</option>
							<option value="티켓">티켓류</option>
							<option value="세트">세트류</option>
					</select></td>
				</tr>
				<tr>
					<th>제품명 <br>팝콘,음료의 경우 사이즈 표기 필수기재(ex: 치즈팝콘M)
					</th>
					<td><input type="text" name="itemName" id="itemName"
						class="form-control" required style="width: auto;"></td>
				</tr>
				<tr>
					<th>가격<br>(단위 : 원)
					</th>
					<td><input type="text" name="itemPrice" id="itemPrice"
						class="form-control" style="width: auto;" required></td>
				</tr>
				<tr>
					<th>제품 수량<br>(단위 : 개)
					</th>
					<td><input type="text" name="itemCount" id="itemCount"
						class="form-control" style="width: auto;" required></td>
				</tr>
				<tr>
					<th>제품 대표 이미지</th>
					<td><input type="file" name="itemImage" id="itemImage">
					</td>
				</tr>

			</table>


			<div class="store_btn">
				<button type="submit" class="btn btn-primary">추가하기</button>
				<button type="button" class="btn btn-default"
					onclick="location.href='/web_team6/store/storemain.do';">돌아가기</button>
			</div>


		</div>
		</form>

		<%@ include file="/inc/footer.jsp" %>
		
	</section>


	<script>
		
	</script>
</body>
</html>