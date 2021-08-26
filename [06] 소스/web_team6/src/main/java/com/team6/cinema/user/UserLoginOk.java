package com.team6.cinema.user;

import java.io.IOException;

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
@WebServlet("/user/userloginok.do") // web.xml을 작성 안해도됨
public class UserLoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String id= req.getParameter("id");
		String pw= req.getParameter("password");
		
		
		UserDAO dao = new UserDAO();
		
		
		int result = dao.loginCheck(id,pw);
		
		if(result==1) {
			HttpSession session = req.getSession();
			
			session.setAttribute("id", id);
			resp.sendRedirect("/web_team6/index.do");
			
		}else {
			
			resp.sendRedirect("/web_team6/user/userlogin.do?login=fail");
			
		}
		
		

	}

}