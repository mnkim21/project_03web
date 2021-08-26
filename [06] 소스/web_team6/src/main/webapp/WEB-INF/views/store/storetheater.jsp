<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어_사용가능극장</title>
<%@include file="/inc/asset.jsp"%>
<%@include file="/inc/store.jsp"%>
<%@ include file="/inc/header_white.jsp"%>
<style>
#search_icon {
	width: 20%;
	height: 30px;
	background-color: #eee;
	outline: none;
	border: none;
	cursor: pointer;
	border: 1px solid #bbb;
	box-sizing: border-box;
	display: flex;
}

#search_icon img {
	width: 23px;
	height: 23px;
}

#store_contents {
	padding-top: 0px
}

.store_popup {
	width: 450px;
	heigh: 350px;
	text-align: center;
}
</style>

</head>
<body>

	<!-- storetheater.jsp -->



	<div class="store_popup">
		<h2 class="store_title" style="text-align: center;">사용가능극장확인</h2>
		<h3 class="store_subtitle" style="color: green">
			<b>해당 상품의 사용이 가능한 지점입니다.</b>
		</h3>
		<form name="form1">
			<select>
				<option value="서울">서울</option>
				
			</select> <input type="text" name="storeBrchSearch" /> <input type="button"
				value="검색하기" name="storeBrchSearchbtn1" />
		</form>
	</div>






	<script>
	
	</script>

</body>
</html>