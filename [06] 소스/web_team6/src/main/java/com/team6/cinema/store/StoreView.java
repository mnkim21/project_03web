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

/**
 * 스토어 제품 클릭시 보이는 상세화면 페이지
 * @author 차소현
 *
 */


@WebServlet("/store/storeview.do")
public class StoreView extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 할일
		// 1. 데이터 가져오기(itemSeq)
		// 2. DB 작업 > DAO 위임 > select where itemSeq
		// 3. BoardDTO 반환 > JSP 호출하기 + 전달하기

		// 1. 데이터 가져오기
		String itemClass = req.getParameter("itemClass");
		String itemSeq = req.getParameter("itemSeq");

		// 2.DB작업
		StoreDAO dao = new StoreDAO();

		ArrayList<StoreDTO> itemList = dao.listByItemSeq(itemSeq);

		// 3.list반환 -> jsp호출하면서 전달하기
		req.setAttribute("itemList", itemList);

		// System.out.println(itemList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storeview.jsp");
		dispatcher.forward(req, resp);

	}

}