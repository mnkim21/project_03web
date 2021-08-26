<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@include file="/inc/asset.jsp"%>
<%@include file="/inc/header_black.jsp"%>

<style>
.box {
	/* border : 3px solid black; */
	width: 650px;
	height: 300px;
	font-size: 5em;
	margin-top: 100px;
	margin-left: 500px;
}

.camera {
	width: 600px;
	height: 300px;
	/* border: 3px solid black; */
	float: right;
	margin-top: 30px;
	margin-right: 420px;
}
</style>

<script>
	
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

	<!--   <h1 class="page-header"></h1> -->


	<div class="box">
		일상속의 즐거움,<br> FilmmoA
	</div>
	<img src="/web_team6/asset/images/adminmain.png" alt="" class="camera">



	<script>
		
	</script>


	<%@ include file="/inc/footer.jsp"%>

</body>
</html>
