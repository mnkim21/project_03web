package com.team6.cinema.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 회원 비밀번호 찾기 클래스
 * @author 6조
 *
 */
@WebServlet("/user/userfindpw.do") // web.xml을 작성 안해도됨
public class UserFindPw extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/userfindpw.jsp");
		dispatcher.forward(req, resp);
	}

}