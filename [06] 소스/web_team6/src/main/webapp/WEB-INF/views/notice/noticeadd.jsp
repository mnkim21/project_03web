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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>

.page-header{
margin-left:250px;
width : 1000px;
};

#table{

margin-left : 280px;
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




</style>

<script>


$( function() {
    $( "#datepicker" ).datepicker();
  } );




</script>



</head>
<body>
<%@ include file="/inc/adminheader.jsp" %>
<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>공지사항</span>
		</div>
	</div>


   <!-- movieadd.jsp -->

   <h1 class="page-header">공지사항 등록</h1>

	<table table bordered="1">

            <tr>
               <th>공지사항 제목</th>
               <td><input type="text" name="eventtitle" id="eventtitle"
                  class="form-control" required></td>
            </tr>
          
            <tr>
               <th>주요내용</th>
               <td><textarea id="content" name="content"
                     placeholder="내용을 입력해주세요."></textarea></td>
            </tr>
         </table>


         <div id="enroll">
            <input class=btn btn-default button type="submit" value="공지사항등록하기">
         </div>

   
   </div>

   <script>
      
            
 
   </script>
   
   <div style="margin-top: 100px"></div>
   <%@ include file="/inc/footer.jsp" %>

</body>
</html>
