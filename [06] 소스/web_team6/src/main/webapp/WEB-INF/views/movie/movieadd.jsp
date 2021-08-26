<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@include file="/inc/asset.jsp"%>
<%@include file="/inc/header_white.jsp"%>


<style>
.page-header {
	margin-left: 250px;
	width: 1000px;
}

;
#table {
	margin-left: 280px;
}

table {
	margin-left: 280px;
	width: 800px;
}

table tr>th {
	width: 150px;
}

tr, th, td {
	line-height: 300%;
	font-size: 10pt;
}

td>input {
	size: 60%
}

td>textarea {
	height: 200px;
	width: 600px;
}

#enroll {
	margin-left: 600px;
}

body{

position:absolute;
}
</style>

<script>
	//개봉일 선택

	$(function() {
		$("#datepicker").datepicker();
	});
</script>


</head>
<body>
	<%@ include file="/inc/adminheader.jsp"%>
	<link rel="stylesheet"
		href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


	<!-- movieadd.jsp -->

	<h1 class="page-header">영화 등록</h1>



	<div>

		<form method="POST" action="/cinema/movie/movieaddok.do"
			enctype="multipart/form-data">

			<table table bordered="1" id="table">

				<tr>
					<th>영화이름(한글)</th>
					<td><input type="text" name="kortitle" id="kortitle"
						class="form-control" required style="width: 200px"></td>
				</tr>

				<tr>
					<th>영화이름(영문)</th>
					<td><input type="text" name="engtitle" id="engtitle"
						class="form-control" required style="width: 200px"></td>
				</tr>

				<tr>
					<th>국가</th>
					<td><input type="text" name="state" id="state"
						class="form-control" required style="width: 200px"></td>
				</tr>

				<tr>
					<th>장르</th>
					<td><select name="genre">
							<option value="">장르</option>
							<option value="멜로">멜로</option>
							<option value="코미디">코미디</option>
							<option value="액션">액션</option>
							<option value="스릴러">스릴러</option>
							<option value="느와르">느와르</option>
							<option value="공포">공포</option>
							<option vlaue="SF">SF</option>
					</select></td>
				</tr>

				<tr>
					<th>개봉일</th>
					<td>
						<!-- <input type="text" name="opendate" id="opendate"
                  class="form-control" required style="width:200px"> -->

						<p>
							<input type="text" id="datepicker"
								style="width: 200px; height: 30px;">
						</p>
					</td>
				</tr>

				<tr>
					<th>감독</th>
					<td><input type="text" name="director" id="director"
						class="form-control" required style="width: 200px"></td>
				</tr>

				<tr>
					<th>주연배우</th>
					<td><input type="text" name="actor" id="actor"
						class="form-control" required style="width: 200px"></td>
				</tr>

				<tr>
					<th>배급사</th>
					<td><input type="text" name="company" id="company"
						class="form-control" required style="width: 200px"></td>
				</tr>

				<tr>
					<th>러닝타임</th>
					<td><input type="text" name="runningtime" id="runningtime"
						class="form-control" required style="width: 200px"></td>
				</tr>

				<tr>
					<th>영화상영포맷</th>
					<td><select name="format">
							<option value="">포맷</option>
							<option value="2D">2D(자막)</option>
							<option value="3D">3D</option>
							<option vlaue="4D">4D</option>
					</select>
				</tr>

				<tr>
					<th>영화상영등급</th>
					<td><select name="rating">
							<option value="">등급</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option vlaue="3">3</option>
					</select>
				</tr>

				<tr>
					<th>영화포스터등록하기</th>
					<td>
						<div class="form-group">


							<input type="text" value="" id="file_box" /> <input type="file"
								id="upload" name="uploadFIle" style="display: none;">
							<button type="button" class="btn btn-default" id="add">파일추가</button>
						</div>

					</td>
				</tr>

				<tr>
					<th>주요내용</th>
					<td><textarea id="content" name="content"
							placeholder="내용을 입력해주세요."></textarea></td>
				</tr>
			</table>


			<div id="enroll">
				<input class=btn btn-default button type="submit" value="영화등록하기">
			</div>

		</form>
	</div>
	<div style="margin-top: 300px"></div>

	<script>
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


	<%@ include file="/inc/footer.jsp"%>

</body>
</html>
