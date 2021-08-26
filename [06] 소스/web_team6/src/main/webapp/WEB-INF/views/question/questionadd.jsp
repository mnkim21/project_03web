<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는질문추가</title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>
#question_add {
	margin: 0 auto;
	width: 1200px;
}

#question_add>h1 {
	font-size: 35px;
	text-align: center;
	font-weight: bold;
	margin-bottom: 60px;
}

#question_add td {
	padding: 5px;
	padding-bottom: 20px;
}

#question_add th {
	padding: 5px;
	padding-bottom: 20px;
}

#add_form table {
	margin: 0 auto;
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

.form-control {
    width: 500px;
    height: 150px;
}


</style>
</head>
<body>
	<%@ include file="/inc/header.jsp"%>

	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>회원가입</span>
		</div>
	</div>

	<div id="question_add">

		<h1>자주묻는질문</h1>

		<form method="POST" action="/web_team6/question/questionmain.do"
			id="add_form">
			<table>
				<tr>
					<th>분류</th>
					<td>
                        <select name="question" style="width: 100%; height: 34px;">
							<option value="1">영화예매</option>
							<option value="2">분실물문의</option>
							<option value="3">상영관 좌석문의</option>
							<option value="4">외부음식반영문의</option>
							<option value="5">극장</option>
							<option value="6">VIP</option>
                            <option value="7">스토어</option>
                            <option value="8">마이페이지</option>
					    </select>
                    </td>
				</tr>
				<tr>
					<th>질문</th>
					<td><input name="answer" type="text" class="form-control"
						placeholder="질문을 입력해주세요." required pattern="[a-zA-Z0-9가-힣]+"></td>
				</tr>
                <tr>
					<th>답변</th>
					<td><input name="answer" type="text" class="form-control"
						placeholder="답변을 입력해주세요." required pattern="[a-zA-Z0-9가-힣]+"></td>
				</tr>
			</table>

			<div id="button">
				<input id="addButton" type="button" value="등록하기" class="btn btn-primary" style="cursor:pointer;" onclick="location.href='/web_team6/question/questionmain.do';"> 
                <input type="button" value="취소" class="btn btn-group" onclick="history.back();" style="cursor:pointer;">
			</div>

		</form>

	</div>

	<div style="margin-top: 100px"></div>



	<%@ include file="/inc/footer.jsp"%>

	<script>

		
		$('#addButton').click(function(){

		});
		
		
	</script>
</body>
</html>


