<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--adminuserlist-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<!-- ADMINUSERLIST  -->
<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>
.page-header {
	margin-left: 250px;
	width: 1280px;
}

;
select#choice {
	margin-right: 50px;
}

form#search_form {
	float: right;
	margin-left: 550px;
}

input#search {
	width: px;
}

#title {
	margin-top: 140px;
	margin-left: 380px;
	font-size: 30px;
}

btn .btn-primary {
	margin-left: 55px;
}

div .form-check-input {
	margin-top: 50px;
	margin-left: 250px;
	width: 20px;
	height: 20px;
	margin-right: 60px;
}

div>.box {
	border: 1px solid black;
	padding-left: 15px;
	padding-top: 15px;
	padding-bottom: 15px;
	font-size: 20px;
}

.pagebar {
	margin-top: 50px;
	margin-left: 630px;
	width: 600px;
	height: 200px;
	margin-bottom: 50px;
}

.table {
	margin-top: 100px;
	margin-left: 300px;
	/* border : 3px solid black; */
	/* 	width : 1200px;*/
	/*	height : 1000px; */
	font-size: 22px;
	border-spacing: 0px;
	width: 1100px;
}
</style>
</head>

<body>

	<%@ include file="/inc/adminheader.jsp"%>
	<link rel="stylesheet"
		href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<div id="total">

		<h1 class="page-header">회원목록</h1>

		<!-- 조건,검색  -->
		<div id="selPage" style="margin-right: 300px;">
			<form action="/team6/admin/adminuserlist.do" method="GET"
				id="search_form">
				<select name="column" id="column" class="form-control"
					style="width: 100px;">
					<option value=" ">조회</option>
					<option value="name">이름</option>
					<option value="id">아이디</option>
				</select> <input type="text" id="wriitebox"
					style="width: 160px; margin-left: 15px;"> <input
					class="btn btn-sm btn-default" type="submit" value="검색"
					name="search" id="search" style="margin-left: 15px;">
				<button type="button" class="btn btn-primary"
					style="margin-left: 30px;" onclick=del()>삭제</button>
			</form>
		</div>

	</div>


	<table class="table">
		<tr>
			<th><input type="checkbox" name="checkall"></th>
			<th>순번</th>
			<th>이름</th>
			<th>아이디</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>등록일</th>
		</tr>

		<%-- <c:forEach items="{list}" var="dto"> --%>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel}</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="checkRow"></td>
			<td>${dto.seq}</td>
			<td>${dto.username}
			</th>
			<td>${dto.userId}</td>
			<td>${dto.userTel }</td>
			<td>${dto.userEmail}</td>
			<td>${dto.userRegdate}</td>
		</tr>
		<%-- </c:forEach> --%>

	</table>


	<div class="pagebar">
		<div class="row">
			<div class="col">
				<ul class="pagination pagination-lg">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</div>
		</div>
	</div>



	</div>
</body>

<script>

<c:if test="{map.isSearch=='y'}">
   
      //상태복원
      $('#column').val('${map.column}');
      $('#search').val('${map.search}');
   
</c:if>


   $('#selPage').change(function(){

      location.href='/cinema/admin/adminuserlist.do?page='+$(this).val();
            
   });

   #('#selPage').val('${nowPage}');
   



   $(document).ready(function(){
       //체크박스 전체 선택&해제
       $('#checkboxall').click(function(){
            if($("#checkboxall").prop("checked")){
               $("input[type=checkbox]").prop("checked",true); 
           }else{
               $("input[type=checkbox]").prop("checked",false); 
           }
       });
    
       $('#del').click(function(){
           if(confirm("삭제하시겠습니까?")){
               $("input[name=checkRow]:checked").each(function(){
                   var tr_value =$(this).val();
                   var tr=$("tr[data-tr_value='"+tr_value+"']");
                   tr.remove();
               });
           }else{
               return false;
           }
       });
    
   
</script>
<%@ include file="/inc/footer.jsp"%>
</body>
</html>
