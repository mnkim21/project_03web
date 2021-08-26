<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>

<style>

	form{
		width: 400px;
		display: flex;
		justify-content: center;
		align-items: center;
		margin: 100px auto;
	}
	
	body > form > input{
		width: 200px;
	}
</style>
</head>
<body>
	<!--  -->
	
	
	<script>
	
	
	
	
	
	<c:if test="${result==0}">
	$(opener.document).find('#idchecktrue').css('display','inline');
	$(opener.document).find('#idcheckfalse').css('display','none');
		window.close();
	</c:if>
	
	
	<c:if test="${result==1}">
	$(opener.document).find('#idchecktrue').css('display','none');
	$(opener.document).find('#idcheckfalse').css('display','inline');
		window.close();
	</c:if>
	
	</script>
</body>
</html>













