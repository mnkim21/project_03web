
/***
 * 메인 패키지
 */
package com.team6.cinema;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team6.cinema.event.EventDAO;
import com.team6.cinema.event.EventDTO;
import com.team6.cinema.movie.MovieDAO;
import com.team6.cinema.movie.MovieDTO;

/***
 * 메인페이지 클래스
 * 
 * @author 6조
 *
 */
@WebServlet("/index.do")
public class Index extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		MovieDAO mDao = new MovieDAO();

		ArrayList<MovieDTO> mList = mDao.getMostMovie();

		EventDAO eDao = new EventDAO();
		ArrayList<EventDTO> eList = eDao.getEventList();

		ArrayList<EventDTO> bigEvent = new ArrayList<EventDTO>();
		ArrayList<EventDTO> smallEvent = new ArrayList<EventDTO>();
		for (int i = 0; i < 3; i++) {
			EventDTO big = eList.get(i);
			bigEvent.add(big);
		}

		for (int i = 3; i < 7; i++) {
			EventDTO small = eList.get(i);
			smallEvent.add(small);
		}

		req.setAttribute("bigEvent", bigEvent);
		req.setAttribute("smallEvent", smallEvent);
		req.setAttribute("mList", mList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/index.jsp");
		dispatcher.forward(req, resp);

	}

}