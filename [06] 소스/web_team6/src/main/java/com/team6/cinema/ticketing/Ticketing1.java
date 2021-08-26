package com.team6.cinema.ticketing;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team6.cinema.movie.MovieDAO;
import com.team6.cinema.movie.MovieDTO;

/***
 * 예매 (영화, 극장, 상영일자, 상영시간) 선택 클래스
 * @author 6조
 *
 */
@WebServlet("/ticketing/ticketing1.do")
public class Ticketing1 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 예매 1단계(영화, 극장, 시간&날짜)
		
		TicketingDAO dao = new TicketingDAO();
		
		String mName = req.getParameter("mName");
		String area = req.getParameter("area");
		String theater = req.getParameter("theater");
		String date = req.getParameter("date");
		
		if(mName==null || mName.equals("")) {
			mName="";
		}
		if(area==null || area.equals("")) {
			area="";
		}
		if(theater==null || theater.equals("")) {
			theater="";
		}
		if(date==null || date.equals("")) {
			date="";
		}
		
		ArrayList<TicketingDTO2> scheduleList = null;
		if(mName.length()!=0 && theater.length()!=0 && date.length()!=0) {
		scheduleList = dao.getSchedule(mName,theater,date);
		}
		
		String poster = dao.getSelectPoster(mName);
		
		
		Calendar cal = Calendar.getInstance();
		String today= String.format("%tF",cal);
		MovieDAO mDao= new MovieDAO();
		ArrayList<MovieDTO> mList = mDao.getMovieList();
		Calendar post = Calendar.getInstance();
		post.add(Calendar.MONTH,-1);
		String strPost=String.format("%tF",post);
		ArrayList<MovieDTO> playingList = mDao.getPlayingMovie(strPost,today);
		ArrayList<TicketingDTO> list2 = dao.list2();
		ArrayList<TicketingDTO> list3 = dao.list3();
		
		req.setAttribute("playingList", playingList);		
		req.setAttribute("list2", list2);		
		req.setAttribute("list3", list3);	
		req.setAttribute("area", area);
		req.setAttribute("theater", theater);
		req.setAttribute("date", date);
		req.setAttribute("mName", mName);
		req.setAttribute("scheduleList", scheduleList);
		req.setAttribute("poster", poster);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketing1.jsp");
		dispatcher.forward(req, resp);
	}

}