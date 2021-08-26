package com.team6.cinema.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 스토어 제품을 결제하는 페이지
 * @author 차소현
 *
 */

@WebServlet("/store/storepurchase.do")
public class StorePurchase extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storepurchase.jsp");
		dispatcher.forward(req, resp);

	}

}