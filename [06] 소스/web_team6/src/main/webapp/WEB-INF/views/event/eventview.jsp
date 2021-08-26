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
#main_content {
	margin-top: 60px;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

#poster {
	width: 800px;
}

#content {
	width: 690px;
	height: 30px;
	font-weight: bold;
	font-size: 16px;
}

#btnList {
	margin-top: 20px;
	margin-bottom: 50px;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

#btn {
	border-radius: 10%;
	width: 70px;
	height: 40px;
	background-color: cornflowerblue;
	font-size: 17px;
	font-weight: bold;
	color: white;
}

#bar {
	background-color: #E0E0E0;
	width: 800px;
	height: 5px;
	margin: 0px auto;
	margin-top: 20px;
}

#title {
	width: 800px;
	margin: 0px auto;
	margin-top: 100px;
}

#title1 {
	color: #333333;
	font-size: 28px;
	font-weight: bold;
	margin-bottom: 5px;
}

#title2 {
	color: #919191;
	font-size: 15px;
	font-weight: bold;
}

#comments {
	width: 800px;
	margin: 0px auto;
}

#comment-head {
	margin: 5px;
	font-weight: bold;
}

#new-comment {
	width: 800px;
	background-color: #eaeaea;
	font-weight: bold;
	resize: none;
}

#comment_btn {
	font-size: 15px;
	font-weight: bold;
	width: 60px;
	height: 26px;
	width: 800px;
}

.comment-date {
	margin-top: 10px;
	font-size: 0.7vw;
}

.comment-content {
	margin-bottom: 10px;
	font-weight: bold;
}

.comment-row {
	border-collapse: collapse;
	border-bottom: 1px solid #e0e0e0;
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
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>이벤트</span><span>&gt;</span>
			<span>이벤트 상세보기</span>
		</div>
	</div>

	
	<div id="title">
		<span id="title1">${dto.eventTitle }</span> <br> <span id="title2">${dto.eventStartdate }~${dto.eventEnddate }</span>
	</div>
	<div id="bar"></div>

	<div id="main_content">
		<span> <img src="${dto.eventPoster }" alt="" id="poster">
		</span>
	</div>
	<div id="comments">
		<div id="comment-head" class="comment-row">
			댓글 <span id="comments-count">2</span>개
		</div>
		<div class="comment-row">
			<textarea id="new-comment" name="new_comment" rows="5"
				placeholder="댓글을 작성해주세요"></textarea>
			<button type="submit" onclick="submitComment()" id="comment_btn">작성</button>
		</div>
		<div class="comment-row">
			<div class="comment-date">${dto.eventEnddate }</div>
			<div class="comment-content">${dto.eventComment }</div>
		</div>
		<div class="comment-row">
			<div class="comment-date">${dto.eventEnddate }</div>
			<div class="comment-content">${dto.eventComment }</div>
		</div>
	</div>

	<div id="btnList">
		<input type="button" value="목록" class="btn btn-default" id="btn" onclick="location.href='/web_team6/event/eventmain.do';">
	</div>

	<%@ include file="/inc/footer.jsp"%>

	<script>
		function warnEmpty() {
			alert("댓글을 작성해주세요");
		}
		function dateToString(date) {
			const dateString = date.toISOString();
			const dateToString = dateString.substring(0, 10) + " "
					+ dateString.substring(11, 19);
			return dateToString;
		}
		function submitComment() {
			const newcommentEL = document.getElementById("new-comment");
			const newcomment = newcommentEL.value.trim();

			if (newcomment) {
				const dateEL = document.createElement('div');
				dateEL.classList.add("comment-date");
				const dateString = dateToString(new Date());
				dateEL.innerText = dateString;

				const contentEL = document.createElement('div');
				contentEL.classList.add('comment-content');
				contentEL.innerText = newcomment;

				const commentEL = document.createElement('div');
				commentEL.classList.add('comment-row');
				commentEL.appendChild(dateEL);
				commentEL.appendChild(contentEL);

				document.getElementById('comments').appendChild(commentEL);
				newcommentEL.value = "";

				const countEL = document.getElementById('comments-count');
				const count = countEL.innerText;
				countEL.innerText = parseInt(count) + 1;
			} else
				warnEmpty();
		}
	</script>
</body>
</html>