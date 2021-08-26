package com.team6.cinema.ticketing;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 영화 좌석선택 및 결제 클래스
 * @author 6조
 *
 */
@WebServlet("/ticketing/ticketing2.do")
public class Ticketing2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 예매 2단계(인원, 좌석 선택)
		//mName=${mName}&area=${area}&theater=${theater}&time='+$(this).val().substring($(this).val().indexOf(' ')+1);
		String mName = req.getParameter("mName");
		String theater = req.getParameter("theater");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		
		
		TicketingDAO dao = new TicketingDAO();
		
		TicketingDTO2 dto = dao.getDetailSchedule(mName, theater, date,time);
		
		req.setAttribute("dto", dto);
		req.setAttribute("time", time);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketing2.jsp");
		dispatcher.forward(req, resp);
	}

}

