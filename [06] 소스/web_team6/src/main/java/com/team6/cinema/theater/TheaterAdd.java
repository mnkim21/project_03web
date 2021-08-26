package com.team6.cinema.theater;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 극장 추가 클래스
 * @author 6조
 *
 */
@WebServlet("/theater/theateradd.do") // web.xml을 작성 안해도됨
public class TheaterAdd extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/theater/theateradd.jsp");
		dispatcher.forward(req, resp);
	}

}
