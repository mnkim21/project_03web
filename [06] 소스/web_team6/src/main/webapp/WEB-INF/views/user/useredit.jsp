<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>
<script>
	
	<c:if test="${empty id}">
		location.href="/web_team6/user/userlogin.do";
	</c:if>
	
	</script>

<style>
#signup {
	margin: 0 auto;
	width: 650px;
}

#signup>h1 {
	font-size: 35px;
	text-align: center;
	font-weight: bold;
	margin-bottom: 60px;
}

#signup td {
	width: 300px;
	padding: 5px;
	padding-bottom: 20px;
}

#signup td:nth-child(2) {
	display: flex;
}

#signup tr:nth-child(1) td:nth-child(2) {
	display: block;
}

#signup td:nth-child(3) {
	width: 150px;
}

#signup th {
	text-align: right;
	width: 250px;
	padding: 5px;
	padding-bottom: 20px;
}

#signup_form table {
	margin: 0 auto;
}

#birth>td>* {
	width: 95px;
	margin-right: 10px;
}

#birth>td>*:last-child {
	margin-right: 0px
}

#button {
	width: 400px;
	margin: 0 auto;
	display: flex;
	justify-content: center;
	margin-top: 70px;
}

#button>input {
	width: 120px;
	height: 50px;
	font-size: 20px;
	font-weight: bold;
	margin-left: 50px;
}

.check_icon, .remove_icon {
	width: 16px;
	margin: 0 3px;
}
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>

	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>마이페이지</span><span>&gt;</span>
			<span>회원정보수정</span>
		</div>
	</div>

	<h1
		style="width: 1100px; font-weight: bold; margin: 0 auto; border-bottom: 2px solid #ccc; margin-top: -40px; margin-bottom: 60px;">회원정보수정</h1>
	<div id="signup">



		<form method="POST" action="/web_team6/user/usereditok.do"
			id="signup_form" enctype="multipart/form-data">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" class="form-control"
						placeholder="사용할 아이디를 입력해주세요" name="id" id="userId"
						value="${dto.userId }" disabled></td>



				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" class="form-control"
						placeholder="영문,숫자5자~15자 이내" name="pw" id="password" value="${dto.userPw }" required pattern="[a-zA-Z0-9]{5,15}" ></td>

				</tr>

				<tr>
					<th>이름</th>
					<td><input type="text" class="form-control" placeholder="이름"
						name="name" value="${dto.userName }" disabled></td>

				</tr>
				<tr>
					<th>이메일</th>
					<td><input name="email" type="text" class="form-control"
						placeholder="example"
						value="${dto.userEmail.substring(0,dto.userEmail.indexOf('@')) }" required pattern="^[a-zA-Z]{1}[a-zA-Z0-9]{1,15}" ><span
						style="margin: 0 5px; padding-top: 5px;">@</span> <input
						type="text" class="form-control" placeholder="직접입력" id="email1"
						name="email1"
						value="${dto.userEmail.substring(dto.userEmail.indexOf('@')+1) }"  required pattern="^[a-zA-Z]+(.com|.net)$" ></td>
					<td><select name="email2" id="email2" style="height: 30px;"
						id="email2">
							<option value="1">직접입력</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="nate.com">nate.com</option>
							<option value="naver.com">naver.com</option>
					</select></td>
				</tr>
				<tr id="birth">
					<th>생년월일</th>
					<td><input type="text" class="form-control"
						placeholder="년(4자)" name="birth_year"
						value="${dto.userBirth.substring(0,4) }" disabled> <select
						name="birth_month" style="width: 300px;" disabled >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select> <input type="text" class="form-control" placeholder="일"
						name="birth_date" value="${dto.userBirth.substring(8,10) }"
						disabled></td>

				</tr>
				<tr id="gender">
					<th>성별</th>
					<td><input type="radio" name="gender" value="m"
						style="margin-left: 15px;" disabled>남 <input type="radio"
						name="gender" value="w" style="margin-left: 15px;" disabled>여</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input id="tel" name="tel" type="text" class="form-control"
						placeholder="ex) 01012345678" value="${dto.userTel }" required required pattern="[0-9]{10,11}" ></td>

				</tr>
				<tr id="question">
					<th>질문</th>
					<td><select name="question" style="width: 100%; height: 34px;">
							<option value="1">나의 보물 제 1호는?</option>
							<option value="2">나의 좌우명은?</option>
							<option value="3">내가 어렸을 적 살던곳은?</option>
							<option value="4">내가 존경하는 인물은?</option>
							<option value="5">나의 가장 친한친구의 이름은?</option>
							<option value="6">초등학교 시절 나의 꿈은?</option>
					</select></td>

				</tr>
				<tr>
					<th>답변</th>
					<td><input name="answer" type="text" class="form-control"
						placeholder="답변을 입력해주세요." value="${dto.userAnswer }" required pattern="[a-zA-Z0-9가-힣]+"></td>
				</tr>

				<tr id="theater">
					<th>선호극장</th>
					<td><select name="prefer_theater"
						style="width: 100%; height: 34px;">
							<option value="강남">강남</option>
							<option value="강남대로(씨티)">강남대로(씨티)</option>
							<option value="강동">강동</option>
							<option value="군자">군자</option>
							<option value="동대문">동대문</option>
							<option value="마곡">마곡</option>
							<option value="목동">목동</option>
							<option value="상봉">상봉</option>
							<option value="상암월드컵경기장">상암월드컵경기장</option>
							<option value="성수">성수</option>
							<option value="센트럴">센트럴</option>
							<option value="송파파크하비오">송파파크하비오</option>
							<option value="신촌">신촌</option>
							<option value="이수">이수</option>
							<option value="창동">창동</option>
							<option value="코엑스">코엑스</option>
							<option value="홍대">홍대</option>
							<option value="화곡">화곡</option>
							<option value="ARTNINE">ARTNINE</option>
							<option value="고양스타필드">고양스타필드</option>
							<option value="김포한강신도시">김포한강신도시</option>
							<option value="남양주">남양주</option>
							<option value="남양주현대아울렛 스페이스원">남양주현대아울렛 스페이스원</option>
							<option value="동탄">동탄</option>
							<option value="미사강변">미사강변</option>
							<option value="백석">백석</option>
							<option value="별내">별내</option>
							<option value="부천스타필드시티">부천스타필드시티</option>
							<option value="분당">분당</option>
							<option value="수원">수원</option>
							<option value="수원남문">수원남문</option>
							<option value="시흥배곧">시흥배곧</option>
							<option value="안산중앙">안산중앙</option>
							<option value="안성스타필드">안성스타필드</option>
							<option value="양주">양주</option>
							<option value="영통">영통</option>
							<option value="용인기흥">용인기흥</option>
							<option value="용인테크노밸리">용인테크노밸리</option>
							<option value="의정부민락">의정부민락</option>
							<option value="일산">일산</option>
							<option value="일산벨라시타">일산벨라시타</option>
							<option value="킨텍스">킨텍스</option>
							<option value="파주금촌">파주금촌</option>
							<option value="파주운정">파주운정</option>
							<option value="파주출판도시">파주출판도시</option>
							<option value="하남스타필드">하남스타필드</option>
							<option value="검단">검단</option>
							<option value="송도">송도</option>
							<option value="영종">영종</option>
							<option value="인천논현">인천논현</option>
							<option value="청라지젤">청라지젤</option>
							<option value="공주">공주</option>
							<option value="논산">논산</option>
							<option value="대전">대전</option>
							<option value="대전유성">대전유성</option>
							<option value="대전중앙로">대전중앙로</option>
							<option value="대전현대아울렛">대전현대아울렛</option>
							<option value="세종(조치원)">세종(조치원)</option>
							<option value="세종나성">세종나성</option>
							<option value="세종청사">세종청사</option>
							<option value="오창">오창</option>
							<option value="제천">제천</option>
							<option value="진천">진천</option>
							<option value="천안">천안</option>
							<option value="청주사창">청주사창</option>
							<option value="충주">충주</option>
							<option value="홍성내포">홍성내포</option>
							<option value="경북도청">경북도청</option>
							<option value="경산하양">경산하양</option>
							<option value="구미강동">구미강동</option>
							<option value="김천">김천</option>
							<option value="남포항">남포항</option>
							<option value="대구(칠성로)">대구(칠성로)</option>
							<option value="대구신세계(동대구)">대구신세계(동대구)</option>
							<option value="대구이시아">대구이시아</option>
							<option value="덕천">덕천</option>
							<option value="마산">마산</option>
							<option value="문경">문경</option>
							<option value="부산극장">부산극장</option>
							<option value="부산대">부산대</option>
							<option value="북대구(칠곡)">북대구(칠곡)</option>
							<option value="삼천포">삼천포</option>
							<option value="양산">양산</option>
							<option value="양산라피에스타">양산라피에스타</option>
							<option value="울산">울산</option>
							<option value="정관">정관</option>
							<option value="창원">창원</option>
							<option value="창원내서">창원내서</option>
							<option value="해운대(장산)">해운대(장산)</option>
							<option value="광주상무">광주상무</option>
							<option value="광주하남">광주하남</option>
							<option value="목포하당(포르모)">목포하당(포르모)</option>
							<option value="송천">송천</option>
							<option value="순천">순천</option>
							<option value="여수웅천">여수웅천</option>
							<option value="전대(광주)">전대(광주)</option>
							<option value="전주혁신">전주혁신</option>
							<option value="첨단">첨단</option>
							<option value="남춘천">남춘천</option>
							<option value="속초">속초</option>
							<option value="원주">원주</option>
							<option value="원주센트럴">원주센트럴</option>
					</select></td>
				</tr>

				<tr id="genre">
					<th>선호장르</th>
					<td><select name="prefer_genre"
						style="width: 100%; height: 34px;">
							<option value="판타지">판타지</option>
							<option value="다큐">다큐</option>
							<option value="애니메이션">애니메이션</option>
							<option value="SF">SF</option>
							<option value="로맨스">로맨스</option>
							<option value="스릴러">스릴러</option>
							<option value="성인">성인</option>
							<option value="공포">공포</option>
							<option value="코미디">코미디</option>
					</select></td>
				</tr>
				<tr id="my_profile_img">
					<th>프로필사진</th>
					<td><input type="text" value="${dto.userImage.substring(dto.userImage.lastIndexOf('/')+1)}" id="file_box" class="form-control" /></td>
								<td><button type="button" class="btn btn-default" id="add">사진변경</button></td>
				</tr>
					<input type="file"
								id="upload" name="attach" style="display: none;" value="${dto.userImage.substring(dto.userImage.lastIndexOf('/')+1)}" accept=".gif, .jpg, .png,.svg">
			</table>

			<div id="button">
				<input id="editButton" type="submit" value="수정하기" class="btn btn-primary"> <input	type="button" value="취소" class="btn btn-group"	onclick="location.href='/web_team6/user/usermypage.do'">
			</div>

		</form>

	</div>

	<div style="margin-top: 100px"></div>



	<%@ include file="/inc/footer.jsp"%>

	<script>
		$('#email2').change(function() {
			$("#email2 option:selected").each(function() {
				if ($(this).val() == '1') {
					//직접입력일 경우
					$("#email1").val('');
					//값 초기화 
					$("#email1").attr("disabled", false);
					//활성화 
				} else {
					//직접입력이 아닐경우
					$("#email1").val($(this).text());
					//선택값 입력 
				}
			});
		});

		$('#pw_check').keyup(function() {

			if ($('#password').val() == $('#pw_check').val()) {
				$('#pw_false').css('display', 'none');
				$('#pw_true').css('display', 'inline');
			} else {
				$('#pw_true').css('display', 'none');
				$('#pw_false').css('display', 'inline');
			}

		});

		$('#userIdCheck').click(
				function() {

					var opensub = window.open(
							"/web_team6/user/useridcheck.do?id="
									+ $('#userId').val(), "idCheck");

				});
		

		$('#birth option').each(function(){

		    if($(this).val()=="${dto.userBirth.substring(5,7)}"){

		      $(this).attr("selected",true);

		    }

		  });
		
		$('#gender input[type=radio]').each(function(){

		    if($(this).val()=="${dto.userGender}"){

		      $(this).attr("checked",true); 

		    }

		  });
		
		$('#question option').each(function(){

		    if($(this).val()=="${dto.userQuestion}"){

		      $(this).attr("selected",true); 

		    }

		  });
		
		$('#theater option').each(function(){

		    if($(this).val()=="${dto.userTheater}"){

		      $(this).attr("selected",true);

		    }

		  });
		
		$('#genre option').each(function(){

		    if($(this).val()=="${dto.userGenre}"){

		      $(this).attr("selected",true);

		    }

		  });
		
		$('#add').click(function() {

			$('#upload').click();
		});

		$('#upload').change(
				function() {
					$('#file_box').val(
							$('#upload').val().substr(
									$('#upload').val().lastIndexOf('\\') + 1));
				});
		

		
	</script>
</body>
</html>
