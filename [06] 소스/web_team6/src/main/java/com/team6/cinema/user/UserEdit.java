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
 * 회원 수정 클래스
 * @author 6조
 *
 */
@WebServlet("/user/useredit.do") // web.xml을 작성 안해도됨
public class UserEdit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		UserDAO dao = new UserDAO();
		HttpSession session = req.getSession();
		
		String id = (String) session.getAttribute("id");
		
		UserDTO dto = dao.getUserInfo(id);
		
		
		req.setAttribute("dto", dto);
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/useredit.jsp");
		dispatcher.forward(req, resp);
	}

}