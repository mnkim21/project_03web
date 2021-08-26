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
	justify-content: space-around;
	align-items: center;
	width: 200px;
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
				<span id="title1">전체 60건</span>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">1. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-1">
						<span id="que-1-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-1">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">2. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-2">
						<span id="que-2-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-2">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">3. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-3">
						<span id="que-3-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-3">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">4. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-4">
						<span id="que-4-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-4">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">5. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-5">
						<span id="que-5-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-5">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">6. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-6">
						<span id="que-6-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-6">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">7. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-7">
						<span id="que-7-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-7">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">8. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-8">
						<span id="que-8-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-8">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">9. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-9">
						<span id="que-9-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-9">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>

			<div class="qna_box">
				<div class="qna_title">10. [예매]</div>
				<div class="qna_midbox">
					<div class="qna_q">Q.</div>
					<div class="qna_content">예매에 관련된 질문입니다. 예매 어쩌고 저쩌고입니다요.</div>
					<button type="button" class="btm_image" id="que-10">
						<span id="que-10-toggle" class="stretch_btn"> + </span>
					</button>
				</div>
				<div class="answer_box">
					<div class="answer" id="ans-10">
						<span class="qna_q">A.</span> Lorem ipsum dolor sit amet
						consectetur adipisicing elit. In explicabo nobis porro voluptatem
						facilis soluta quo? Ipsam error aliquam veniam explicabo minus?
						Consequatur deserunt eius illo eligendi quidem in aliquid? Lorem
						ipsum dolor sit amet, consectetur adipisicing elit. Nemo quasi
						mollitia voluptatibus. Eaque iste fugiat amet sunt vitae quia
						voluptas, nam, ducimus assumenda expedita mollitia optio provident
						quos ea deleniti.
					</div>
				</div>
			</div>
			<div class="bar"></div>


			<div id="nav">
				<div>
					<button type="button" class="btn_image" id="img_btn_left">
						<img src="/web_team6/asset/images/chevron-left.svg">
					</button>
				</div>
				<div id="nav_content">
					<a href="#" rel="0" class="">1</a> <a href="#" rel="1" class="">2</a>
					<a href="#" rel="2" class="">3</a> <a href="#" rel="3" class="">4</a>
				</div>
				<div>
					<button type="button" class="btn_image" id="img_btn_right">
						<img src="/web_team6/asset/images/chevron-right.svg">
					</button>
				</div>
			</div>
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