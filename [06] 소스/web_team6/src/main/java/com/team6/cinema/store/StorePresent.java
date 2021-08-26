package com.team6.cinema.store;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 스토어 제품을 선물하는 페이지
 * @author 차소현
 *
 */
//선물하는 페이지

@WebServlet("/store/storepresent.do")
public class StorePresent extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 1.데이터 받아오기
		String itemClass = req.getParameter("itemClass");
		String itemSeq = req.getParameter("itemSeq");

		
		// 2.DB
		StoreDAO dao = new StoreDAO();
		ArrayList<StoreDTO> itemList = dao.listByItemSeq(itemSeq);

		
		//3. 값 보내주기
		req.setAttribute("itemList", itemList);

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storepresent.jsp");
		dispatcher.forward(req, resp);

	}

}