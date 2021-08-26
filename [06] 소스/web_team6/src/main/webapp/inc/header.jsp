<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="header">
	<div id="header_in">
		<section id="head_sec1">
		
		<a href="/web_team6/question/questionmain.do"><span>고객센터</span></a>
		<c:if test="${empty id}">
          <a href="/web_team6/user/useradd.do"><span>회원가입</span></a>
          <a href="/web_team6/user/userlogin.do"><span>로그인</span></a>
          </c:if>
          <c:if test="${not empty id}">
          <a href="/web_team6/user/userlogout.do"><span>로그아웃</span></a>
          <a href="/web_team6/user/usermypage.do"><span>마이페이지</span></a>
          </c:if>
		</section>
		<div style="clear: both;"></div>
		<section id="head_sec2">
			<div id="search_box">
				<form action="" method="GET" id="search_form">
					<button type="submit" id="search_icon">
						<img src="/web_team6/asset/images/search-solid.svg" alt="S" style="width: 23px; height: 23px">
					</button>
					<input id="search" type="text" name="movieName"
						placeholder="영화를 입력해주세요.">
				</form>
			</div>
			<div>
				<a id="logo_link" href="/web_team6/index.do"><span id="title_icon"><img src="/web_team6/asset/images/clapperboard.png" alt="" /></span
            >FilmMoA</a>
			</div>
		</section>
		<section id="head_sec3"></section>

		<section id="head_sec4">
			<div><a href="/web_team6/movie/moviemain.do">영화</a></div>
			<div><a href="/web_team6/ticketing/ticketing1.do">예매</a></div>
			<div><a href="/web_team6/theater/theatermain.do">극장</a></div>
			<div><a href="/web_team6/store/storemain.do">스토어</a></div>
			<div><a href="/web_team6/event/eventmain.do">이벤트</a></div>
			<div>
				<a href="/web_team6/user/usermypage.do"><img src="/web_team6/asset/images/user-black.svg" alt="" style="width:30px;height: 30px"></a>
			</div>
		</section>
	</div>
</header>











