package com.team6.cinema.ticketing;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/***
 * 예매정보 추가 클래스
 * @author 6조
 *
 */
@WebServlet("/ticketing/ticketingadd.do") // web.xml을 작성 안해도됨
public class TicketingAdd extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String count=req.getParameter("count");
		String seat=req.getParameter("seat");
		String scheduleSeq=req.getParameter("scheduleSeq");
		int adult=Integer.parseInt( req.getParameter("adult"));
		int teen=Integer.parseInt( req.getParameter("teen"));
		int child=Integer.parseInt( req.getParameter("child"));
		
		
		String[] seats =seat.split(",");
		ArrayList<String> seatRow = new ArrayList<String>();
		ArrayList<String> seatColumn = new ArrayList<String>();
		
		for(int i=0; i<seats.length;i++) {
		seatRow.add(seats[i].substring(0,1));
		seatColumn.add(seats[i].substring(1));
		
		}
		TicketingDAO dao = new TicketingDAO();
		HttpSession session = req.getSession();
		String my_id = (String)session.getAttribute("id");
		int result = dao.ticketingAdd(my_id,scheduleSeq);
		String ticketingSeq = dao.getTicketingSeq(my_id,scheduleSeq);
		
		
		int result2 = dao.userSeatAdd(ticketingSeq,seatRow,seatColumn,adult,teen,child);
		
		System.out.println(result);
		System.out.println(result2);
		
		
		
		
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/ticketing/ticketingadd.jsp");
		dispatcher.forward(req, resp);
	}

}
