package com.team6.cinema.event;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/***
 * 이벤트 댓글 수정 클래스
 * @author 6조
 *
 */
@WebServlet("/event/eventcommenteditok.do")
public class EventCommentEditOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/event/eventcommenteditok.jsp");
		dispatcher.forward(req, resp);
	}

}
