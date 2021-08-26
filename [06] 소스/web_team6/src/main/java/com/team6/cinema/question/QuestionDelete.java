package com.team6.cinema.question;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 자주 묻는 질문 삭제 페이지를 불러오는 클래스
 * @author 허주원
 *
 */
@WebServlet("/question/questiondelete.do") // web.xml을 작성 안해도됨
public class QuestionDelete extends HttpServlet {
	/**  get방식을 통해 페이지를 불러옵니다. */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/question/questiondelete.jsp");
		dispatcher.forward(req, resp);
	}

}
