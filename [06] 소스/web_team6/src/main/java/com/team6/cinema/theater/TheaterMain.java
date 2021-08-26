package com.team6.cinema.theater;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//극장메뉴 선택시 보이는 메인메뉴

/***
 * 극장 메인 클래스
 * @author 6조
 *
 */
@WebServlet("/theater/theatermain.do") // web.xml을 작성 안해도됨
public class TheaterMain extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		TheaterDAO dao = new TheaterDAO();
		
		String seq = req.getParameter("seq");
		
		if(seq==null || seq=="") {
			seq="";
		}
		
		ArrayList<TheaterDTO> list = dao.getTheater();
		
		for(int i=0; i<list.size();i++) {
			
			list.get(i).setTheaterTitle(list.get(i).getTheaterTitle().replace("\\r\\n","<br>"));
			list.get(i).setTheaterInfo(list.get(i).getTheaterInfo().replace("\\r\\n","<br>"));
			
		}
		
		HttpSession session = req.getSession();
		String myTheater = dao.myTheaterNum((String) session.getAttribute("id"));
		req.setAttribute("myTheater", myTheater);
		req.setAttribute("list", list);
		req.setAttribute("seq", seq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/theater/theatermain.jsp");
		dispatcher.forward(req, resp);
	}

}