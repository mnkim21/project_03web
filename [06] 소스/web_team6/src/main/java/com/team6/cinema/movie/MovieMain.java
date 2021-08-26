package com.team6.cinema.movie;

//영화목록
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 영화 메인 클래스
 * @author 6조
 *
 */
@WebServlet("/movie/moviemain.do")
public class MovieMain extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Calendar cal = Calendar.getInstance();
		String today= String.format("%tF",cal);
		
		String year = String.format("%02d",cal.get(Calendar.YEAR)).substring(2);
		String month = String.format("%02d",cal.get(Calendar.MONTH)+1);
		
		//1.
		MovieDAO dao= new MovieDAO();
		
		//2.ArrayList<BoardDTO>반환
		ArrayList<MovieDTO> list = dao.getMovieList();
		
		Calendar post = Calendar.getInstance();
		post.add(Calendar.MONTH,-1);
		String strPost=String.format("%tF",post);
		
		//Calendar future = Calendar.getInstance();
		//future.add(Calendar.MONTH,+1);
		//String strFuture=String.format("%tF",future);
		
		
		
		ArrayList<MovieDTO> playingList = dao.getPlayingMovie(strPost,today);
		ArrayList<MovieDTO> thisMonthList = dao.getThisMonthMovie(year,month);
		ArrayList<MovieDTO> expectList = dao.getExpectMovie(today);
		
		//3.
		
		req.setAttribute("playingList",playingList);
		req.setAttribute("thisMonthList",thisMonthList);
		req.setAttribute("expectList",expectList);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/movie/moviemain.jsp");
		dispatcher.forward(req, resp);
		
	}

}
