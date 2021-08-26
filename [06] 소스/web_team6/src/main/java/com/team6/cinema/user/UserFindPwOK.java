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
@WebServlet("/user/userfindpwok.do") // web.xml을 작성 안해도됨
public class UserFindPwOK extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name=req.getParameter("username");
		String tel=req.getParameter("usertel");
		String id=req.getParameter("userid");
		String question=req.getParameter("userquestion");
		String answer=req.getParameter("useranswer");
		
		System.out.println(name +" "+tel+" "+id+" "+question+" "+answer);
		UserDAO dao = new UserDAO();
		
		String pw = dao.searchPw(name,tel,id,question,answer);
		
		System.out.println(pw);
		
		req.setAttribute("pw", pw);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/userfindpwok.jsp");
		dispatcher.forward(req, resp);
	}

}
