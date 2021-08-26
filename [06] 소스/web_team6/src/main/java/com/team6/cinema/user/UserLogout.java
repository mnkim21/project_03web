package com.team6.cinema.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/***
 * 
 * 회원 로그아웃 클래스
 * @author 6조
 *
 */
@WebServlet("/user/userlogout.do") // web.xml을 작성 안해도됨
public class UserLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		session.invalidate();
		
		
		resp.sendRedirect("/web_team6/index.do");
	}
}
