<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>

<style>

    #main_box {
        height: auto;
        margin: 50 auto;
        width: 500px;
    }

    table {
        border: 3px solid #ccc;
        /* border-collapse: collapse; */
    }

    th {
        text-align: left;
        font-size: 25px;
        border: 2px solid #ccc;
    }

    td {
        border: 2px solid #ccc;
    }

    #btnList {
        height: auto;
        margin: 0 auto;
        width: 500px;
        display: flex;
	    justify-content: space-around;
    }

    #btn {
        width: 60px;
        height: 30px;
    }
</style>

</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>공지사항</span>
		</div>
	</div>
    
    <div id="main_box">
        <table>
            <tr>
                <th>${dto.noticeSeq }.&nbsp;${dto.noticeTitle }</th>
            </tr>
            <tr>
                <td>관리자&nbsp;&nbsp;${dto.noticeDate }</td>
            </tr>
            <tr>
                <td>${dto.noticeDate }</td>
            </tr>
        </table>
    </div>

	<div id="btnList">
		<input type="button" value="목록" class="btn btn-default" id="btn"  onclick="location.href='/web_team6/notice/noticemain.do';">
	</div>

	<div style="margin-top: 100px"></div>
	<%@ include file="/inc/footer.jsp"%>
</body>
</html>