package com.team6.cinema.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 스토어 제품 극장확인 클래스
 * @author 6조
 *
 */
@WebServlet("/store/storetheater.do")
public class StoreTheater extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
			
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storetheater.jsp");
		dispatcher.forward(req, resp);

	}

}