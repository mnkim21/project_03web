<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>

#bar {
	background-color: #E0E0E0;
	width: 855px;
	height: 4px;
	margin: 0px auto;
	margin-top: 10px;
}

#title {
	width: 830px;
	margin: 0px auto;
	color: #333333;
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 20px;
}

#main_content {
	display: flex;
	width: 60%;
	height: auto;
	margin: 25px auto;
	min-width: 1200px;
	margin-top: 100px;
}

#left {
	text-align: center;
	width: 10%;
	margin: 0 auto;
	margin-top: 45px;
	min-width: 200px;
}

#right {
	height: auto;
	width: 60%;
	margin: 0 auto;
	min-width: 830px;
}

#left_table {
	width: 200px;
	border-top: 5px solid #E0E0E0;
	border-collapse: collapse;
}

div#left>table tbody>tr>td {
	border-bottom: 5px solid #E0E0E0;
	height: 40px;
	font-size: 18px;
	font-weight: bold;
}

.right_table {
	width: 830px;
	margin-bottom: 100px;
	border-collapse: collapse;
	line-height: 35px;
}

div#right>table tbody>tr>td:nth-child(n) {
	height: 55px;
}

div#right>table tbody>tr>td:nth-child(1) {
	min-width: 90px;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
}

select {
	width: 10%;
	min-width: 750px;
	height: 35px;
	font-weight: bold;
}

div#right>table tbody>tr>td:nth-child(2) {
	height: 30px;
	width: 60%;
	min-width: 760px;
	margin-top: 15px;
}

#nav {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 100px;
}

#nav_content {
	font-weight: bold;
	display: flex;
	justify-content: space-around;
	align-items: center;
	width: 200px;
}


.btn_image {
	width: 40px;
	height: 40px;
}

.content_short {
	height: 35px;
	min-width: 745px;
	font-size: 20px;
	background-color: #E0E0E0;
	border: 1px solid #EAEAEA;
}

div#right>table tbody>tr:nth-child(n) {
	border-bottom: 4px solid #E0E0E0;
}

.content_long {
	height: 500px;
	min-width: 745px;
	font-size: 20px;
	background-color: #E0E0E0;
	border: 1px solid #EAEAEA;
	margin-top: 7px;
	margin-bottom: 7px;
}

#file_box {
	height: 25px;
	font-size: 20px;
}

#add {
	font-size: 15px;
	width: 90px;
	height: 35px;
	margin-left: 10px;
	background-color: cornflowerblue;
	color: white;
	font-weight: bold;
	border-radius: 10%;
}

.content_tel {
	margin-top: -7px;
	height: 35px;
	width: 100px;
	font-size: 20px;
	background-color: #E0E0E0;
	border: 1px solid #EAEAEA;
}

.bar {
	height: 2px;
	width: 30px;
	background-color: #A8A8A8;
	margin-top: 12px;
	margin-left: 10px;
	margin-right: 10px;
}

#tel {
	display: flex;
}

#btnCancle {
	width: 80px;
	height: 50px;
	background-color: #E0E0E0;
	color: #333333;
	font-weight: bold;
	border-radius: 10%;
	font-size: 18px;
}

#btnOk {
	width: 80px;
	height: 50px;
	background-color: cornflowerblue;
	color: white;
	font-weight: bold;
	border-radius: 10%;
	font-size: 18px;
	margin-left: -300px;
}

#lowButton {
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	margin-right: -300px;
	margin-bottom: 150px;
}

.content_cal {
	height: 35px;
	min-width: 300px;
	font-size: 24px;
	color: #757575;
	background-color: #E0E0E0;
	border: 1px solid #EAEAEA;
	text-align: center;
}

#cal {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

#lost_time {
	font-size: 20px;
	font-weight: bold;
}

.person_type {
	font-size: 20px;
	font-weight: bold;
	margin-left: 10px;
	margin-right: 10px;
}

#person {
	display: flex;
	justify-content: center;
	align-items: center;
}

#top_tag {
	width: 60%;
	min-width: 1200px;
	height: 50px;
	background-color: #e0e0e0;
	margin: 0px auto;
}

#top_tag_main {
	display: flex;
	width: 60%;
	min-width: 1200px;
}

#house_img {
	margin-left: 80px;
	width: 20px;
}

.top_tag_content {
	font-size: 15px;
	font-weight: bold;
	margin-left: 10px;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

#chev_right {
	margin-left: 10px;
	width: 15px;
}
</style>

</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>대관문의수정</span>
		</div>
	</div>

	<!--   //제이쿼리 ui css -->
	<link rel="stylesheet"
		href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

	<!--  //제이쿼리 style css -->
	<link rel="stylesheet" href="/resources/demos/style.css">

	<!--  //제이쿼리 js -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

	<!--  //제이쿼리 ui js -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


	<div id="main_content">
		<div id="left">
			<table id="left_table">
				<tr>
					<td style="cursor:pointer;" onclick="location.href='/web_team6/question/questionmain.do';">자주 묻는 질문</td>
				</tr>
				<tr>
					<td style="cursor:pointer;" onclick="location.href='/web_team6/rent/rentadd.do';">1:1 문의</td>
				</tr>
				<tr>
					<td style="cursor:pointer;" onclick="location.href='/web_team6/lost/lostadd.do';">분실물 문의</td>
				</tr>
				<tr>
					<td style="cursor:pointer;" onclick="location.href='/web_team6/rent/rentadd.do';">대관 문의</td>
				</tr>
			</table>
		</div>
		<div id="right">
			<div id="title">
				<span id="title1">문의 내용</span>
			</div>
			<div id="bar"></div>

			<table class="right_table">
				<tr id="cal_total">
					<td>영화관</td>
					<td><select name="type">
							<option value="">영화관 선택</option>
							<option value="영화관 선택">영화관 선택</option>
							<option value="영화관 선택">영화관 선택</option>
							<option value="영화관 선택">영화관 선택</option>
					</select></td>
				</tr>
				<tr>
					<td>인원</td>
					<td id="person">
						<p class="person_type">성인</p> <input type="text"
						class="content_tel">
						<p class="person_type">명</p>
						<p class="person_type">청소년</p> <input type="text"
						class="content_tel">
						<p class="person_type">명</p>
						<p class="person_type">아이</p> <input type="text"
						class="content_tel">
						<p class="person_type">명</p>
					</td>
				</tr>
				<tr>
					<td>영화명</td>
					<td><input type="text" class="content_short" required
						value="${dto.movieName }"></td>
				</tr>
				<tr>
					<td>희망날짜</td>
					<td id="cal"><input type="date" class="content_cal">
						<p id="lost_time">희망시간</p> <input type="time" class="content_cal">
					</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" class="content_short" required
						value="${dto.rentTitle }"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><input type="text" class="content_long" required
						value="${dto.rentContent }"></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td>
						<div class="form-group">
							<input type="text" value="" id="file_box" /> <input type="file"
								id="upload" name="uploadFIle" style="display: none;">
							<button type="button" class="btn btn-default" id="add"  style="cursor:pointer;">파일선택</button>
						</div>
					</td>
				</tr>

			</table>
			<div id="title">
				<span id="title1">고객 정보</span>
			</div>
			<div id="bar"></div>
			<table class="right_table">
				<tr>
					<td>성명</td>
					<td><input type="text" class="content_short" required
						value="${dto.uesrName }"></td>
				</tr>
				<tr id="tel_total">
					<td>연락처</td>
					<td><input type="text" class="content_short" required
						value="${dto.uesrTel }"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" class="content_short" required
						value="${dto.userEmail }"></td>
				</tr>
			</table>
			<div id="lowButton">
				<div>
					<input type="button" value="취소" class="btn btn-default"
						id="btnCancle" style="cursor:pointer;" onclick="history.back();">
				</div>
				<div>
					<input type="button" value="완료" class="btn btn-default" id="btnOk" style="cursor:pointer;" onclick="location.href='/web_team6/question/questionmain.do';">
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/inc/footer.jsp"%>
	
	<script>
        $('#add').click(function(){
	      
	      $('#upload').click();
	   });
	   
	   $('#upload').change(function(){
	      $('#file_box').val($('#upload').val().substr($('#upload').val().lastIndexOf('\\')+1));   
	   });
    </script>
</body>
</html>