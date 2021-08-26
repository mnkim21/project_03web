<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<script>
	
	<c:if test="${empty id}">
		location.href="/web_team6/user/userlogin.do";
	</c:if>
	
	</script>
<style>
#sign_up_ok_box {
	margin: 0 auto;
	width: 650px;
}

#sign_up_ok_box>h1 {
	font-size: 35px;
	text-align: center;
	font-weight: bold;
	margin-bottom: 60px;
}

#button {
	width: 400px;
	margin: 0 auto;
	display: flex;
	justify-content: space-around;
	margin-top: 70px;
}

#button>input {
	width: 150px;
	height: 50px;
	font-size: 20px;
	font-weight: bold;
}

#sign_up_ok {
	background-color: #eee;
	width: 400px;
	height: 250px;
	margin: 0 auto;
	border-radius: 40px;
}

#sign_up_ok {
	display: flex;
	justify-content: center;
	align-items: center;
}

#sign_up_ok h1 {
	font-size: 50px;
	font-weight: bold;
	color: tomato;
}

</style>

</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H" class="home_icon" style="width: 15px"></span>
			<span>&gt;</span> <span>예매</span><span>&gt;</span> <span>좌석선택</span><span>&gt;</span> <span>결제</span>
		</div>
	</div>

	<div id="sign_up_ok_box">

		<h1>결제</h1>
		<div id="sign_up_ok">
			<c:if test="${result==1}">
			<h1>결제 완료!</h1>
			</c:if>
			<c:if test="${result==0}">
			<h1>결제 실패!</h1>
			</c:if>
		</div>
		<div id="button">
			<input type="button" value="홈으로" class="btn btn-primary" onclick="location.href='/web_team6/index.do';">
		</div>
	</div>

	<div style="margin-top: 100px"></div>

	<%@ include file="/inc/footer.jsp"%>
</body>
</html>
