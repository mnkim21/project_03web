package com.team6.cinema.user;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 회원가입 데이터 insert 클래스
 * @author 6조
 *
 */
@WebServlet("/user/useraddok.do") // web.xml을 작성 안해도됨
public class UserAddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Calendar cal = Calendar.getInstance();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String email1 = req.getParameter("email1");
		int birth_year = Integer.parseInt(req.getParameter("birth_year"));
		int birth_month = Integer.parseInt(req.getParameter("birth_month"));
		int birth_date = Integer.parseInt(req.getParameter("birth_date"));
		String gender = req.getParameter("gender");
		String tel = req.getParameter("tel");
		String question = req.getParameter("question");
		String answer = req.getParameter("answer");
		String prefer_theater = req.getParameter("prefer_theater");
		String prefer_genre = req.getParameter("prefer_genre");

		cal.set(birth_year, birth_month-1, birth_date);
		
		String birth = String.format("%tF", cal);
		
		UserDAO dao = new UserDAO();
		
		UserDTO dto = new UserDTO();
		
		dto.setUserId(id);
		dto.setUserPw(pw);
		dto.setUserName(name);
		dto.setUserEmail(email+"@"+email1);
		dto.setUserBirth(birth);
		dto.setUserGender(gender);
		dto.setUserTel(tel);
		dto.setUserQuestion(question);
		dto.setUserAnswer(answer);
		dto.setUserTheater(prefer_theater);
		dto.setUserGenre(prefer_genre);
		
		int result =  dao.userAdd(dto);
		
		
		req.setAttribute("result", result);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/useraddok.jsp");
		dispatcher.forward(req, resp);
	}

}
