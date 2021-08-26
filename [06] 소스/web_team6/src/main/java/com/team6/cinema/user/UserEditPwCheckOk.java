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
 * 회원 정보수정 비밀번호 확인 클래스
 * @author 6조
 *
 */
@WebServlet("/user/usereditpwcheckok.do") // web.xml을 작성 안해도됨
public class UserEditPwCheckOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String pw = req.getParameter("password");
		
		
		UserDAO dao = new UserDAO();
		
		HttpSession session = req.getSession();
		
		int result = dao.userEditPwCheck((String)session.getAttribute("id"),pw);
		
		if(result==1) {
			resp.sendRedirect("/web_team6/user/useredit.do");
		}else {
			resp.sendRedirect("/web_team6/user/usereditpwcheck.do");
		}
		
	}

}