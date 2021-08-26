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
<script>
	
	<c:if test="${empty id}">
		location.href="/web_team6/user/userlogin.do";
	</c:if>
	
	</script>
<style>
#login {
	margin: 0 auto;
	width: 650px;
}

#login>h1 {
	font-size: 15px;
	text-align: center;
	font-weight: bold;
	margin-bottom: 60px;
	line-height: 40px;
	color: tomato;
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
	margin: 0 125px;
}

#login_form {
	margin-left: -60px;
}

.button {
	width: 300px;
	margin: 0 auto;
	margin-top: 100px;
	display: flex;
	justify-content: space-between;
}

.button>input {
	width: 140px;
	height: 40px;
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
	<h1 style="width: 1100px; font-weight: bold; margin: 0 auto; border-bottom: 2px solid #ccc; margin-top: -40px; margin-bottom: 60px;">회원정보확인</h1>
	<div id="login">
		<h1>회원님의 개인정보 보호를 위해 비밀번호를 입력하셔야 합니다.<br />필름모아 로그인시 사용하는 비밀번호를 입력해주세요.</h1>
		<form method="POST" action="/web_team6/user/usereditpwcheckok.do"
			id="login_form">
			<table>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" class="form-control"
						placeholder="비밀번호" name="password"></td>
				</tr>
			</table>

			<div class="button">
				<input type="submit" value="확인" class="btn btn-primary">
				<input type="button" value="취소" class="btn btn-default" onclick="location.href='/web_team6/user/usermypage.do'">
			</div>

		</form>

	</div>



	<div style="margin-top: 250px"></div>




	<%@ include file="/inc/footer.jsp"%>
	
	<script>
	
	
		
	
	</script>
	
	
	
	
</body>
</html>
