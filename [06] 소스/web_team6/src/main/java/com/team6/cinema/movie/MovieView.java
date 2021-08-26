package com.team6.cinema.movie;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//상태보기페이지

/***
 * 영화 상세보기 클래스
 * @author 6조
 *
 */
@WebServlet("/movie/movieview.do") // web.xml을 작성 안해도됨
public class MovieView extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String mseq=req.getParameter("movieseq");
		
		
		MovieDAO dao = new MovieDAO();
		
		
		MovieDTO dto = dao.getDetailMovie(mseq);
		
		
		
		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/movie/movieview.jsp");
		dispatcher.forward(req, resp);
	}

}
