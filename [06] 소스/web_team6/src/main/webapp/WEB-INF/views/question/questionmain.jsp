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
.bar {
	background-color: #E0E0E0;
	min-width: 830px;
	height: 5px;
	margin: 0px auto;
	margin-top: 10px;
	margin-bottom: 15px;
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
	margin-top: 80px;
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
	min-width: 830px;
	margin-right: 50px;
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

.btm_image {
	border: none;
	background-color: white;
}

#nav {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 100px;
	margin-top: 80px;
}

#nav_content {
	font-weight: bold;
	display: flex;
	align-items: center;
}

#nav_content > a {
	background-color: #EAEAEA;
	line-height: 40px;
	text-decoration: none;
	text-align: center;
	width: 40px;
	height: 40px;
}

.btn_image {
	width: 40px;
	height: 40px;
}

.answer {
	line-height: 22px;
	display: none;
	background-color: #EFEFEF;
	width: 500px;
}

.qna_title {
	width: 60%;
	min-width: 830px;
	font-size: 15px;
	font-weight: bold;
	margin-bottom: 10px;
}

.qna_q {
	font-weight: bold;
	color: red;
	font-size: 18px;
	margin-right: 5px;
	margin-top: -2px;
}

.qna_content {
	font-size: 15px;
	font-weight: bold;
}

.stretch_btn {
	font-size: 19px;
	font-weight: bold;
	margin-left: 5px;
}

.qna_midbox {
	display: flex;
}

.answer_box {
	background-color: #EFEFEF;
	display: flex;
	margin-bottom: 10px;
	margin-top: 5px;
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
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>고객센터</span><span>&gt;</span> <span>자주묻는
				질문</span>
		</div>
	</div>

	<div id="main_content">
		<div id="left">
			<table id="left_table">
				<tr>
					<td>자주 묻는 질문</td>
				</tr>
				<tr>
					<td>1:1 문의</td>
				</tr>
				<tr>
					<td>분실물 문의</td>
				</tr>
				<tr>
					<td>대관 문의</td>
				</tr>
			</table>
		</div>
		<div id="right">
			<div id="title">
				<span id="title1">전체 ${totalCount}건</span>
			</div>
			<div class="bar"></div>

			<c:forEach items="${qList}" var="dto">
			<div class="qna_box">
				<div class="qna_title">${dto.rnum }. [${dto.questionType }]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">${dto.questionTitle }</div>
					<button type="button" class="btm_image" id="que-${dto.rnum }">
						<span id="que-${dto.rnum }-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-${dto.rnum }">
						<span class="qna_q">A.</span> ${dto.questionContent }
					</div>
				</div>
			</div>
			<div class="bar"></div>
			</c:forEach>
			


			${pagebar }
		</div>

	</div>

	<%@ include file="/inc/footer.jsp"%>

	<script>
        const items = document.querySelectorAll('.btm_image');

        function openCloseAnswer() {
        const answerId = this.id.replace('que', 'ans');

        if(document.getElementById(answerId).style.display === 'block') {
            document.getElementById(answerId).style.display = 'none';
            document.getElementById(this.id + '-toggle').textContent = '+';
        } else {
            document.getElementById(answerId).style.display = 'block';
            document.getElementById(this.id + '-toggle').textContent = '-';
        }
        }

        items.forEach(item => item.addEventListener('click', openCloseAnswer));
    </script>
</body>
</html>