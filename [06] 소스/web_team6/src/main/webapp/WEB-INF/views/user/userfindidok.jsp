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



      #find_id_box{
        margin: 0 auto;
        width: 650px;
      }


      
      #find_id_box > h1{
        font-size: 35px;
        text-align: center;
        font-weight: bold;
        margin-bottom: 60px;
      }



      
      #button{
        width: 400px;
        margin: 0 auto;
        display: flex;
        justify-content: space-around;
        margin-top: 70px;
      }

      #button > input{
        width: 150px;
        height: 50px;
        font-size: 20px;
        font-weight: bold;
        
      }

      #find_id{

        background-color: #eee;
        width: 400px;
        height: 250px;
        margin: 0 auto;
        border-radius: 40px;
        padding-top: 20px;

      }

      #find_id>h4{
        margin: 20px 0px;
        text-align: center;
        font-weight: bold;
        font-size: 20px;
      }

      #find_ok{
        text-align: center;
        font-size: 16px;
        font-weight: bold;
        color: #777;
        display: flex;
        justify-content: space-evenly;
        margin-top: 30px;

        
      }

</style>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	
	
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H" class="home_icon" style="width: 15px"></span>
			<span>&gt;</span> <span>아이디 찾기</span>
		</div>
	</div>

    <div id="find_id_box">

      <h1>아이디 찾기</h1>


      <div id="find_id">

        <h4>아이디 검색 결과</h4>
        
		<c:if test="${dto.userRegdate==null}">
        <div style="font-size: 20px; font-weight: bold; color: orange; text-align: center;">검색결과가 존재하지 않습니다.</div>
		</c:if>
		
		<c:if test="${dto.userRegdate!=null}">
        <div id="find_ok"> <span>아이디:${dto.userId }</span><span>가입일:${dto.userRegdate }</span></div>
		</c:if>

      </div>

        
      
      <div id="button">
        <input type="button" value="비밀번호 찾기" class="btn btn-primary" onclick="location.href='/web_team6/user/userfindpw.do'">
        <input type="button" value="로그인" class="btn btn-group" onclick="location.href='/web_team6/user/userlogin.do'">
      </div>

    

    </div>

    

    <div style="margin-top: 100px"></div>
	
	
	
	
	<%@ include file="/inc/footer.jsp" %>
</body>
</html>
