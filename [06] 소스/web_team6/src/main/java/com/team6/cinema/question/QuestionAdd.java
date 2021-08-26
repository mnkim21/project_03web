package com.team6.cinema.question;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 자주묻는질문 추가 클래스
 * @author 허주원
 *
 */
@WebServlet("/question/questionadd.do") // web.xml을 작성 안해도됨
public class QuestionAdd extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/question/questionadd.jsp");
		dispatcher.forward(req, resp);
	}

}
