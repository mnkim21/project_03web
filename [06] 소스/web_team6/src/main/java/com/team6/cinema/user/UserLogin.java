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
 * 회원 로그인 클래스
 * @author 6조
 *
 */
@WebServlet("/user/userlogin.do") // web.xml을 작성 안해도됨
public class UserLogin extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String fail = req.getParameter("login");
		
		if(fail == null|| fail.equals("")) {
			fail="";
		}
		
		req.setAttribute("fail", fail);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/userlogin.jsp");
		dispatcher.forward(req, resp);
	}

}