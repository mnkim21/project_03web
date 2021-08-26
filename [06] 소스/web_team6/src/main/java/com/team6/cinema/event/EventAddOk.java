package com.team6.cinema.event;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * 이벤트 추가 확인 페이지를 불러오는 클래스
 * @author 허주원
 *
 */
@WebServlet("/event/eventaddok.do")
public class EventAddOk extends HttpServlet {
	/**  post방식을 통해 페이지를 불러옵니다. */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//이벤트등록 - 데이터는 가져오는 곳이 없음.
		String eventtitle = "";//영화제목
		String eventthumbnail = "";//썸네일
		String eventposter = ""; //포스터
		String eventtype = "";	//분류
		String eventstart = ""; //시작일
		String eventend = ""; //종료일
		String eventregdate = ""; //등록일
		
		
		try {
			
			MultipartRequest multi = new MultipartRequest(
											req,
											req.getRealPath("/asset/images"),
											1024 * 1024 * 100,
											"UTF-8",
											new DefaultFileRenamePolicy());
			
			System.out.println(req.getRealPath("/asset/images"));
			
			eventtitle = multi.getParameter("eventtitle");
			eventthumbnail = multi.getParameter("eventthumbnail");
			eventposter = multi.getFilesystemName("eventposter");
			eventtype = multi.getParameter("eventtype");		
			eventstart = multi.getParameter("eventstart");
			eventend = multi.getParameter("eventend");
			eventregdate = multi.getParameter("eventregdate");
			
															
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
			
		EventDAO dao = new EventDAO();
		EventDTO dto = new EventDTO();
		
		HttpSession session = req.getSession(); 				
	
		dto.setEventtitle(eventtitle); 
		dto.setEventthumbnail(eventthumbnail);
		dto.setEventposter(eventposter);
		dto.setEventtype(eventtype);
		dto.setEventstart(eventstart);
		dto.setEventend(eventend);
		dto.setEventregdate(eventregdate);
		
		
		dao.add(dto);
		
		
	}
	
}
