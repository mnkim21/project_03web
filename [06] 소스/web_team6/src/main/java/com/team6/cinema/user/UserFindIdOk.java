package com.team6.cinema.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 회원 아이디 찾기 클래스
 * @author 6조
 *
 */
@WebServlet("/user/userfindidok.do") // web.xml을 작성 안해도됨
public class UserFindIdOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		
		UserDAO dao = new UserDAO();
		
		
		UserDTO dto =dao.searchId(name,tel); 
		 
		
		//System.out.println(dto.getUserName());
		if(dto.getUserRegdate()!=null) {
		dto.setUserRegdate(dto.getUserRegdate().substring(0,10));
		}
		req.setAttribute("dto", dto);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/userfindidok.jsp");
		dispatcher.forward(req, resp);
	}

}
