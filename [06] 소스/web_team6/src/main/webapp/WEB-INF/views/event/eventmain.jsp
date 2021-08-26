<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event</title>						
<%@include file="/inc/asset.jsp" %>
<%@ include file="/inc/header_white.jsp"%>
<style>

        main {
            height: auto;
            margin: 0 auto;
            width: 60%;
            min-width: 1200px;
        }

        table {
            margin: 0 auto;
            width: 60%;
            min-width: 1200px;
        }

        th {
            text-align: left;
            font-size: 35px;
            font-weight: bold; 
            margin: 30px;
        }

        td {
            margin-bottom: 50px;
        }

        tr {
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        p {
            margin-top: 5px;
            text-align: center;
            width: 60%;
            min-width: 300px;
            font-weight: bold;
        }

        .event_img {
            width: 300px;
            height: 420px;
        }
	
</style>

</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>이벤트</span><span>&gt;</span> <span>전체이벤트</span>
		</div>
	</div>
	
		<main>
          
            <table>
                <tr>
                    <th>스페셜 이벤트</th>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_roulette.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>극장 룰렛 이벤트<br>2021.07.21~2021.07.26</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_cosplay.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>영화 코스프레 이벤트<br>2021.07.23~2021.07.25</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_quiz.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>극장 퀴즈 마스터 이벤트<br>2021.07.15~2021.07.15</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_sns.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>필름모아 SNS에 좋아요 이벤트<br>2021.07.17~2021.08.07</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_sing.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>필름모아 노래를 이벤트<br>2021.07.25~2021.08.25</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_photo.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>인증샷 이벤트<br>2021.07.19~2021.08.19</p>
                    </td>
                </tr>
                <tr>
                    <th>감동 이벤트</th>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_hanbok.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>극장 한복 이벤트<br>2021.07.23~2021.07.23</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_gamsang.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>영화 감상문 이벤트<br>2021.07.27~2021.08.27</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_dance.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>영화 댄스타임 이벤트<br>2021.07.24~2021.07.26</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_laugh.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>코메디 영화 웃참 이벤트<br>2021.07.28~2021.07.28</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_solo.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>쏠로 영화 데이<br>2021.07.26~2021.07.26</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_couple.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>로맨틱 영화 커플 이벤트<br>2021.07.29~2021.07.29</p>
                    </td>
                </tr>
                <tr>
                    <th>썸머 이벤트</th>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_horror.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>여름 공포 영화 릴레이<br>2021.07.16~2021.07.17</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_fashion.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>시원한 영화 감상<br>2021.07.17~2021.07.20</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_night.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>심야 영화 이벤트<br>2021.07.18~2021.07.25</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_icecream.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>아이스크림 먹으며 영화<br>2021.07.24~2021.07.29</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_icefoot.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>냉수 족욕 이벤트<br>2021.07.28~2021.07.28</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_airconditioner.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>에어컨 빵빵 이벤트<br>2021.07.26~2021.07.26</p>
                    </td>
                </tr>
                <tr>
                    <th>시사회 / 무대인사</th>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_harrypotter.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>해리포터 시사회<br>2021.07.18~2021.07.18</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_lordring.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>반지의 제왕 시사회<br>2021.07.30~2021.07.30</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_dongmak.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>동막골 시사회<br>2021.07.24~2021.07.24</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="/web_team6/asset/images/event_aladin.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>알라딘 시사회<br>2021.07.29~2021.07.29</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_haundae.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>해운대 시사회<br>2021.07.22~2021.07.22</p>
                    </td>
                    <td>
                        <img src="/web_team6/asset/images/event_lesmiserables.jpg" class="event_img" style="cursor:pointer;" onclick="location.href='/web_team6/event/eventview.do';">
                        <p>레미제라블 시사회<br>2021.07.27~2021.07.27</p>
                    </td>
                </tr>
            </table>

        </main>
        
	<%@ include file="/inc/footer.jsp" %>	
</body>
</html>