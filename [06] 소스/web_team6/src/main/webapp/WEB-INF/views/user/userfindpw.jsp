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


      #signup{
        margin: 0 auto;
        width: 650px;
      }


      
      #signup > h1{
        font-size: 35px;
        text-align: center;
        font-weight: bold;
        margin-bottom: 60px;
      }

      #signup td{
       
        width: 300px;
        padding: 5px;
        padding-bottom: 20px;
      }

      #signup td:nth-child(2){
        display: flex;

      }

      #signup tr:nth-child(1) td:nth-child(2){
        display: block;

      }

      #signup td:nth-child(3){
        width: 150px;
      }

      #signup th{
        text-align: right;
        width: 100px;
        padding: 5px;
        padding-bottom: 20px;
      }

      #signup_form table{
        margin: 0 auto;
        
      }

      #signup_form{
        margin-left: -100px;
      }


      
      #button{
        width: 300px;
        margin: 0 auto;
        margin-top: 50px;
      }

      #button > input{
        width: 290px;
        height: 50px;
        font-size: 20px;
        font-weight: bold;
        margin-left: 55px;
        
      }

      #save_id{
        padding-left: 230px;
        margin-top: -15px;
        margin-bottom: 50px;

      }

</style>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	
	
	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H" class="home_icon" style="width: 15px"></span>
			<span>&gt;</span> <span>비밀번호 찾기</span>
		</div>
	</div>

    <div id="signup">

      <h1>비밀번호 찾기</h1>

      <form method="POST" action="/web_team6/user/userfindpwok.do" id="signup_form"> 
      <table>
        <tr>
          <th>이름</th>
          <td><input type="text" name="username" class="form-control" placeholder="이름">
          </td>
        </tr>
        <tr>
          <th>아이디</th>
          <td><input type="text" name="userid" class="form-control" placeholder="아이디">
          </td>
        </tr>
        <tr>
          <th>전화번호</th>
          <td><input type="text" name="usertel" class="form-control" placeholder="ex) 01012345678"></td>
        </tr>
        <tr>
          <th>질문</th>
          <td><select name="userquestion" style="width: 100%; height: 34px;">
            <option value="0" selected>질문을 선택해주세요.</option>
            <option value="1">나의 보물 제 1호는?</option>
            <option value="2">나의 좌우명은?</option>
            <option value="3">내가 어렸을 적 살던곳은?</option>
            <option value="4">내가 존경하는 인물은?</option>
            <option value="5">나의 가장 친한친구의 이름은?</option>
            <option value="6">초등학교 시절 나의 꿈은?</option>
          </select></td>

        </tr>
        <tr>
          <th>답변</th>
          <td><input type="text" name="useranswer" class="form-control" placeholder="답변을 입력해주세요."></td>
        </tr>
      </table>
      
      <div id="button">
        <input type="submit" value="찾기" class="btn btn-primary">
      </div>

      <div style="padding-left: 280px; font-size: 13px;">
        <a href="/web_team6/user/userlogin.do" style="padding-right: 5px; border-right: 1px solid #aaa;">로그인</a>
        <a href="/web_team6/user/useradd.do" style="margin-right: 117px;">회원가입</a>
        <a href="/web_team6/user/userfindid.do">아이디 찾기</a>
      </div>

    </form>
    

    </div>

    

    <div style="margin-top: 150px"></div>
	
	
	
	
	<%@ include file="/inc/footer.jsp" %>
</body>
</html>
