<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>
#login {
	margin: 0 auto;
	width: 650px;
}

#login>h1 {
	font-size: 35px;
	text-align: center;
	font-weight: bold;
	margin-bottom: 60px;
}

#login td {
	width: 300px;
	padding: 5px;
	padding-bottom: 20px;
}

#login td:nth-child(2) {
	display: flex;
}

#login tr:nth-child(1) td:nth-child(2) {
	display: block;
}

#login td:nth-child(3) {
	width: 150px;
}

#login th {
	text-align: right;
	width: 100px;
	padding: 5px;
	padding-bottom: 20px;
}

#login_form table {
	margin: 0 auto;
}

#login_form {
	margin-left: -20px;
}

#button {
	width: 300px;
	margin: 0 auto;
}

#button>input {
	width: 290px;
	height: 50px;
	font-size: 20px;
	font-weight: bold;
	margin-left: 55px;
}

#save_id {
	padding-left: 240px;
	margin-top: -15px;
	margin-bottom: 50px;
}

#login_msg {
	color: red;
	font-size: 13px;
	padding-left: 240px;
	letter-spacing: -1px;
}
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>


	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>로그인</span>
		</div>
	</div>

	<div id="login">
		<h1>로그인</h1>
		<form method="POST" action="/web_team6/user/userloginok.do"
			id="login_form">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" class="form-control" placeholder="아이디"
						name="id" id="my_id"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" class="form-control"
						placeholder="비밀번호" name="password"></td>
				</tr>
			</table>
			<label style="display: block;" id="save_id"><input
				type="checkbox">아이디 저장</label>

			<c:if test="${not empty fail}">
				<div id="login_msg">아이디 혹은 비밀번호를 잘못 입력하셨거나 등록되지 않은 아이디 입니다.</div>
			</c:if>
			<div id="button">
				<input type="submit" value="로그인" class="btn btn-primary">
			</div>

			<div style="padding-left: 240px; font-size: 13px;">
				<a href="/web_team6/user/userfindid.do" style="padding-right: 5px; border-right: 1px solid #aaa;">아이디찾기</a>
				<a href="/web_team6/user/userfindpw.do" style="margin-right: 80px;">비밀번호찾기</a> <a href="/web_team6/user/useradd.do">회원가입</a>
			</div>

		</form>

	</div>



	<div style="margin-top: 150px"></div>




	<%@ include file="/inc/footer.jsp"%>
	
	<script>
	
	
	$('#button > input').click(function() {
		
		
		//아이디 저장하기
		if($('#save_id > input').prop('checked')){
			//저장 O
			setCookie('save_id',$('#my_id').val(),30); // 30 일동안
			
		}else{
			//저장 X
			setCookie('save_id','',-1);// 만료 시간을 현재 시간보다 과거로 지정> 쿠키 자동 소명
			
		}

	});
	
	
	
	//페이지 로드
	// -> 아이디 저장하기 쿠키가 있으면.. 아이디를 읽어서 텍스트 박스에 세팅하기
	if(getCookie('save_id')!= ""){
		$('#my_id').val(getCookie('save_id'));
		$('#save_id > input').prop('checked',true);	
	}
		
	
	</script>
	
	
	
	
</body>
</html>
