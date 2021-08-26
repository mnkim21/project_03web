package com.team6.cinema.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 회원 아이디 중복확인 클래스
 * @author 6조
 *
 */
@WebServlet("/user/useridcheck.do") // web.xml을 작성 안해도됨
public class UserIdCheck extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id= req.getParameter("id");
		
		UserDAO dao = new UserDAO();
		
		int result = dao.idcheck(id);
		
		
		req.setAttribute("result", result);
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/useridcheck.jsp");
		dispatcher.forward(req, resp);
	}

}