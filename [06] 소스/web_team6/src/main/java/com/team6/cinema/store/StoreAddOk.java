package com.team6.cinema.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 스토어 제품을 추가하는 작업을 하는 클래스 
 * @author 차소현
 *
 */
@WebServlet("/store/storeaddok.do")
public class StoreAddOk extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		// 할 일
		// 1. 인코딩
		// 2. 데이터 가져오기
		// 3. DB 작업 > DAO 위임 > insert
		// 4. 결과 > 후처리

		
		//1. 인코딩작업
		req.setCharacterEncoding("UTF-8");

		//2. 데이터 가져오기
		String itemClass = req.getParameter("itemClass"); // 제품분류
		String itemName = req.getParameter("itemName"); // 제품명

		// 둘다 숫자 계산 해야할 거 같아서 int형으로 받음
		int itemPrice = Integer.parseInt(req.getParameter("itemPrice")); // 제품가격
		int itemCount = Integer.parseInt(req.getParameter("itemCount")); // 제품수량

		String itemImage = req.getParameter("itemImage"); // 제품이미지

		
		//3. DB작업 > DAO 위임 > insert 작업

		StoreDAO dao = new StoreDAO();
		StoreDTO dto = new StoreDTO();

		dto.setItemClass(itemClass);
		dto.setItemCount(itemCount);
		dto.setItemImage(itemImage);
		dto.setItemName(itemName);
		dto.setItemPrice(itemPrice);

		
		int result = dao.add(dto); // 성공시 1 반환, 실패시 0 반환

		
		//4. 결과처리-> JSP로 이동
		
		if (result == 1) {
				//result == 1 : 성공시
		
			resp.sendRedirect("/web_team6/store/storemain.do");

		} else {
				//result != 1 : 실패시
			
			resp.sendRedirect("/web_team6/store/storeadd.do");

		}

	}

}
