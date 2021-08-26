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
 * 스토어 제품을 제품분류별로 모아서 보여주는 페이지
 * @author 6조
 *
 */
@WebServlet("/store/storelist.do")
public class StoreList extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 할 일
		// 1. DB 작업 > DAO 위임 > select
		// 2. ArrayList<BoardDTO> 반환
		// 3. JSP 호출하기 + 2번 전달

		
		//1. 값 받아오기
		String itemClass = req.getParameter("itemClass");
		
		
		int pageNum = req.getParameter("pageNum") == null ? 1 : Integer.parseInt(req.getParameter("pageNum"));
		int pagePerBlock = 9;
		int start = (pageNum - 1) * pagePerBlock;
		int limit = start + pagePerBlock;
		
		
		//2. DB작업
		StoreDAO dao = new StoreDAO();

		
		ArrayList<StoreDTO> list = dao.listByItemClass(itemClass, start, limit);
		int totalCount = dao.countByItemClass(itemClass);
		
		int maxPage = totalCount / pagePerBlock;
		maxPage += (totalCount % pagePerBlock != 0) ? 1 : 0;
		
		
		
		//3. 값 전달
		req.setAttribute("list", list);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("maxPage", maxPage);
		req.setAttribute("startPage", dao);
	
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storelist.jsp");
		dispatcher.forward(req, resp);

	}

}
