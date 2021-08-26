package com.team6.cinema.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team6.cinema.coupon.CouponDAO;
import com.team6.cinema.coupon.CouponHaveDTO;
import com.team6.cinema.store.StoreHistoryDTO;
import com.team6.cinema.ticketing.TicketingDAO;


/***
 * 회원 마이페이지 클래스
 * @author 6조
 *
 */
@WebServlet("/user/usermypage.do") // web.xml을 작성 안해도됨
public class UserMyPage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		Calendar cal = Calendar.getInstance();

		String today =String.format("%tF", cal);
		String my_id = (String) session.getAttribute("id");
		
		
		UserDAO dao = new UserDAO();
		
		UserDTO dto = dao.getUserInfo(my_id);
		
		CouponDAO cDao = new CouponDAO();
		
		
		int couponCount = cDao.getMyCouponCount(my_id); 
		int ticketCount = dao.getMyTicketCount(my_id);
		
		
		ArrayList<MyTicketingDTO> tList= dao.getMyTicketing(my_id);
		ArrayList<StoreHistoryDTO> shList = dao.getMyStoreHistory(my_id);
		ArrayList<String> ticketingSeq = dao.getTicketingSeq(my_id,tList);
		ArrayList<UserSeatDTO> usDto = dao.getUserSeat(ticketingSeq);
		
		for(int i=0; i<tList.size();i++) {
			
			tList.get(i).setTicketingDate(tList.get(i).getTicketingDate().substring(0,10));
			
		}
		
		for(int i=0;i<usDto.size();i++) {
			String s = usDto.get(i).getSeatValue();
			int a=0;
			int b=0;
			int c=0;
			
			int x=0;
			int y=0;
			int z=0;
			int j=0;
			
			
			while (true) {
				j = s.indexOf("성인", j);
				if (j == -1)
					break;
				a++;
				j += "성인".length();
			}
			j=0;
			while (true) {
				j = s.indexOf("청소년", j);
				if (j == -1)
					break;
				b++;
				j += "청소년".length();
			}
			j=0;
			while (true) {
				j = s.indexOf("어린이", j);
				if (j == -1)
					break;
				c++;
				j += "어린이".length();
			}
			
			
//			while(j<s.length()) {
//							
//				
//				if(s.indexOf("청소년",y)> -1) {
//					b++;
//					y+=3;
//				}
//				
//				j++;
//			}
//			
//			j=0;
//			while(j<s.length()) {
//				if(s.indexOf("어린이",z)> -1) {
//					c++;
//					z+=3;
//				}
//				
//				j++;
//			}
//			
			usDto.get(i).setSeatValue(String.format("성인%d 청소년%d 어린이%d",a,b,c));
			
		}
		
		req.setAttribute("shList", shList);
		req.setAttribute("ticketCount", ticketCount);
		req.setAttribute("couponCount", couponCount);
		req.setAttribute("usDto", usDto);
		req.setAttribute("today", today);
		req.setAttribute("tList", tList);
		req.setAttribute("dto", dto);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/usermypage.jsp");
		dispatcher.forward(req, resp);
		
	}

}
