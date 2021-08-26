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

<style>
#find_id {
	margin: 0 auto;
	width: 650px;
}

#find_id>h1 {
	font-size: 35px;
	text-align: center;
	font-weight: bold;
	margin-bottom: 60px;
}

#find_id td {
	width: 300px;
	padding: 5px;
	padding-bottom: 20px;
}

#find_id td:nth-child(2) {
	display: flex;
}

#find_id tr:nth-child(1) td:nth-child(2) {
	display: block;
}

#find_id td:nth-child(3) {
	width: 150px;
}

#find_id th {
	text-align: right;
	width: 100px;
	padding: 5px;
	padding-bottom: 20px;
}

#find_id_form table {
	margin: 0 auto;
}

#find_id_form {
	margin-left: -70px;
}

#button {
	width: 300px;
	margin: 0 auto;
	margin-top: 50px;
}

#button>input {
	width: 290px;
	height: 50px;
	font-size: 20px;
	font-weight: bold;
	margin-left: 55px;
}
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>


	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>아이디
				찾기</span>
		</div>
	</div>

	<div id="find_id">

		<h1>아이디 찾기</h1>

		<form action="/web_team6/user/userfindidok.do" id="find_id_form"
			method="POST">
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" class="form-control"
						placeholder="이름"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="tel" class="form-control"
						placeholder="ex) 01012345678"></td>
				</tr>
			</table>

			<div id="button">
				<input type="submit" value="찾기" class="btn btn-primary">
			</div>

			<div style="padding-left: 264px; font-size: 13px;">
				<a href="/web_team6/user/userlogin.do"
					style="padding-right: 5px; border-right: 1px solid #aaa;">로그인</a> <a
					href="/web_team6/user/userfindpw.do" style="margin-right: 105px;">회원가입</a>
				<a href="">비밀번호 찾기</a>
			</div>

		</form>
	</div>



	<div style="margin-top: 150px"></div>




	<%@ include file="/inc/footer.jsp"%>
</body>
</html>
