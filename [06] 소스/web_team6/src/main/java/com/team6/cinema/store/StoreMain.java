package com.team6.cinema.store;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team6.cinema.user.UserDAO;
import com.team6.cinema.user.UserDTO;

/**
 * 스토어 접속시 기본으로 보여주는 스토어 메인페이지
 * @author 차소현
 *
 */

//스토어 접속시 보이는 화면

@WebServlet("/store/storemain.do") // web.xml을 작성 안해도됨
public class StoreMain extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 할 일
		// 1. DB 작업 > DAO 위임 > select가져오기
		// 2. ArrayList<BoardDTO> 반환
		// 3. JSP 호출하기 + 2번 전달

		// String itemClass = req.getParameter("itemClass");

		//0. 로그인 데이터를 가져온다
		HttpSession session = req.getSession();
		String my_id = (String) session.getAttribute("id");
	
	
		// 1.
		StoreDAO dao = new StoreDAO();
		UserDAO user = new UserDAO();
		UserDTO dto = user.getUserInfo(my_id);
		
		
		// 2.ArrayList<StoreDTO>반환
		ArrayList<StoreDTO> popList = dao.listByItemClass("팝콘");
		ArrayList<StoreDTO> drinkList = dao.listByItemClass("음료");
		ArrayList<StoreDTO> ticketList = dao.listByItemClass("티켓");
		ArrayList<StoreDTO> setList = dao.listByItemClass("세트");

		
		// 3.
		req.setAttribute("popList", popList);
		req.setAttribute("drinkList", drinkList);
		req.setAttribute("ticketList", ticketList);
		req.setAttribute("setList", setList);
		req.setAttribute("dto", dto);
		
		/* System.out.println(dto); */
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storemain.jsp");
		dispatcher.forward(req, resp);
	}

}
