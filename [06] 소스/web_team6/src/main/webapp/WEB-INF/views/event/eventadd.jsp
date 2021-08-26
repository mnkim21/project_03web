<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>

	.page-header{
	margin-left:800px;
	min-width : 60%;
	} 
	
	#event_container{
	width: 1400px;
	margin: 0 auto;
	}
		


		table {
		   margin-left: 250px;
		   width: 800px;
		}
		
		table tr>th {
		   width: 150px;
		}
		
		tr, th, td {
		   line-height: 350%;
		   font-size: 10pt;
		}
		
		td>input {
		   size: 30%		 
		   
		}
		
		td>textarea {
		   height: 200px;
		   width: 600px;
		}
		
		#enroll {
		   margin-left: 600px;
		}
		
	.filebox{
		line - height:30px;
	}
		
</style>

<!-- <script>

//이벤트 등록일
$(function() {
	$("#datepicker").datepicker({ dateFormat: 'yy-mm-dd' })
});


//이벤트 기간
$(function() {
    $("#datepicker2, #datepicker3").datepicker({
        dateFormat: 'yy-mm-dd'
    });
});


</script> -->

</head>
<body>
   <%@ include file="/inc/adminheader.jsp" %>
   <div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>이벤트등록</span><span>&gt;</span> 
		</div>
	</div>
   
   <!--   //제이쿼리 ui css -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 
<!--  //제이쿼리 style css -->
 <link rel="stylesheet" href="/resources/demos/style.css">
 
<!--  //제이쿼리 js -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 
<!--  //제이쿼리 ui js -->
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   
   


   	<h1 class="page-header">이벤트 등록</h1>

   	
   	<div style="width: 1400px; margin: 0 auto;">  	

      <form method="POST" action="/cinema/event/eventaddok.do"
         enctype="multipart/form-data">

         <table table bordered="1">
 	 
            <tr>
               <th>이벤트 제목</th>
               <td><input type="text" name="eventtitle" id="eventtitle"
                  class="form-control" required></td>
            </tr>

            <tr>
               <th>이벤트썸네일</th>
               <td><input type="text" name="eventthumbnail" id="eventthumbnail" 
                  class="form-control" required></td>
            </tr>

            <tr>
               <th>이벤트 분류</th>
               <td><select name="eventtype">
                     <option value="special">스페셜</option>
                     <option value="moving">감동</option>
                     <option value="summer">썸머</option>       
                        <option value="meeting">시사회</option>              
               </select></td>
            </tr>

			<tr>
				<th>이벤트 등록일</th>
					<td>						
						<p>
						<input type="text" id="datepicker" name="eventregdate"
								style="width: 200px; height: 30px;" autocomplete="off">	
						</p>
					</td>
				</tr>

            <tr>
               <th>이벤트기간</th>
               <td>
	            	<input type="text" id="datepicker2" name="eventstart"
								style="width: 200px; height: 30px;" autocomplete="off"> ~
					<input type="text" id="datepicker3" name="eventend"
								style="width: 200px; height: 30px;" autocomplete="off">					
				</td>
             
            </tr>

            <tr>
               <th>이벤트포스터등록하기</th>
               <td>
                  <div class="form-group">    
                             
                  <input type="text" value="" id="file_box"/>                  
                     
                     <input type="file" id="upload" name="eventposter" style="display:none;">
                     <button type="button" class="btn btn-default" id="add">파일추가</button>
                  </div>   
                        
               </td>
            </tr>

    
         </table>


         <div id="enroll">
            <input class=btn btn-default button type="submit" value="이벤트등록하기">
         </div>

      </form>
   
</div>
<!--    <div style="margin-top: 200px;"></div> -->
   
  
   

   <script>
   
 //이벤트 등록일
   $(function() {
   	$("#datepicker").datepicker({ dateFormat: 'yy-mm-dd' })
   });


   //이벤트 기간
   $(function() {
       $("#datepicker2, #datepicker3").datepicker({
           dateFormat: 'yy-mm-dd'
       });
   });
   
   
   
	   $('#add').click(function(){
	      
	      $('#upload').click();
	   });
	   
	   $('#upload').change(function(){
	      $('#file_box').val($('#upload').val().substr($('#upload').val().lastIndexOf('\\')+1));   
	   });
      
   
   
   </script>
   
   <div style="margin-bottom: 150px;"></div>
    <%@ include file="/inc/footer.jsp"%>
    
   </body>
   


</html>