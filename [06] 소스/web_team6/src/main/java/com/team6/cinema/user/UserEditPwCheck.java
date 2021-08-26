package com.team6.cinema.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 회원 정보수정 비밀번호 확인 클래스
 * @author 6조
 *
 */
@WebServlet("/user/usereditpwcheck.do") // web.xml을 작성 안해도됨
public class UserEditPwCheck extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/usereditpwcheck.jsp");
		dispatcher.forward(req, resp);
	}

}
