package com.team6.cinema.event;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 이벤트 삭제 페이지를 불러오는 클래스
 * @author 6조
 */
@WebServlet("/event/eventdelete.do")
public class EventDelete extends HttpServlet {

	/**
	 * doGet메소드
	 */
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/event/eventdelete.jsp");
		dispatcher.forward(req, resp);
	}

}
