<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>						
<%@include file="/inc/asset.jsp" %>
<%@ include file="/inc/header_white.jsp"%>

<style>
	

        #header_out {
            background-color: #e0e0e0;
            width: 60%;
            height: 50px;
            margin: 25px auto;
            min-width: 1200px;
        }

        #header_out_txt1, #header_out_txt2 {
            font-size: 15px;
            font-weight: bold;
            float: left;
            margin-left: 10px;
            margin-top: 15px;
        }

        #right_arrow>img{
            margin-top: 15px;
            width: 20px;
            height: 20px;
            float: left; 
            margin-left: 15px;
        }

        #house_door>img{
            width: 30px;
            height: 30px;
            float: left;
            margin-left: 80px;
            margin-top: 7px;
        }

        #tblNotice {
            /* border: 1px solid black; */
            margin-top: 150px;
            display: flex;
            justify-content: space-around;
            align-items: center;
            margin-bottom: 80px;
        }
        .table {
            border-collapse: collapse; 
            width: 1000px;
            
        }
        
        .table tr:nth-child(1) { 
            background-color: #EAEAEA;
            font-size: 22px;
            text-align: justify;
            height: 70px;
         }

         .table td {
            font-size: 16px;
            font-weight: bold;
            text-align: center;
         }

         .table tr {
             height: 60px;
         }
        

        .table th:nth-child(1) { width: 70px; text-align: center;}
        .table th:nth-child(2) { width: 800px; text-align: center;}
        .table th:nth-child(3) { width: 150px; text-align: center;}
        .table th:nth-child(4) { width: 70px; text-align: center;}

        table {
            border-top: 1px solid #cccccc;
            border-collapse: collapse;
        }
        th, td {
            border-bottom: 1px solid #cccccc;
            padding: 10px;
        }
        
        #nav {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 150px;
        }

        #nav_content {
            font-weight: bold;
            display: flex;
            justify-content: space-around;
            align-items: center;
            width: 200px;
        }

       #nav_content > a {
            background-color: #EAEAEA;
            line-height: 40px;
            text-decoration: none;
            text-align: center;
            width: 40px;
            height: 40px;
        }

        .btm_image {
            width: 40px;
            height: 40px;
        }
</style>

</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>공지사항</span>
		</div>
	</div>
	
	 <div id="tblNotice">
                <table class="table table-bordered">
                    <tr>
                        <th>No.</th>
                        <th>제목</th>
                        <th>작성시간</th>
                    </tr>
                    <c:forEach items="${nList}" var="dto">
                    <tr>
                        <td>${dto.noticeSeq }</td>
                        <td>${dto.noticeTime }</td>
                        <td>${dto.noticeDate }</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
            ${pagebar}
	<%@ include file="/inc/footer.jsp" %>
</body>
</html>