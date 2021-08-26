<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
</style>

</head>
<body>


	<!-- template.jsp > storeadd.jsp > storedel.jsp -->
	<%@ include file="/inc/header.jsp"%>


	<form>
		<div id="page_util">
			<div id="page_util_in">
				<span><img src="/web_team6/asset/images/home-page.png"
					alt="H" class="home_icon" style="width: 15px; height: 15px"></span>
				<span>&gt;</span> <span>스토어</span><span>&gt;</span> <span>선물하기</span>
			</div>
		</div>

		<div id="store_contents">
			<div class="store_payment">
				<h2 class="store_title">
					Store <small>메뉴 삭제하기</small>
				</h2>
			</div>




			<form method="POST" action="/web_team6/store/storedeleteok.do">
				<table class="table table-bordered">
					<tr>
						<th>제품번호</th>
						<td><span style="color: red;">${itemseq}번 메뉴</span>를 삭제합니다.</td>
					</tr>
					<tr>
						<th>제품사진</th>
						<td>제품사진을 불러오기</td>

					</tr>
					<tr>
						<th>제품정보</th>
						<td>제품정보를 불러오기</td>
					</tr>
					<tr>
						<th>제품 삭제 사유 <br> <span style="color: red;">*구체적으로
								기재해주세요</span>
						</th>
						<td><textarea placeholder="삭제사유를 기재하세요" required>
                     </textarea></td>
					</tr>
				</table>

				<div class="store_btn">
					<button type="submit" class="btn btn-primary">삭제하기</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='/web_team6/store/storemain.do?itemseq=${itemseq}';">
						돌아가기</button>
				</div>

				<input type="hidden" name="itemseq" value="${itemseq}" />
			</form>
			</section>

		</div>


		<%@ include file="/inc/footer.jsp"%>


		<script>
			
		</script>
</body>
</html>