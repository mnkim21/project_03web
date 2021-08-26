package com.team6.cinema.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 스토어 제품을 결제할 때, 결제할 제품을 확인시켜주는 페이지
 * @author 차소현
 *
 */

@WebServlet("/store/storepayment.do")
public class StorePayment extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storepayment.jsp");
		dispatcher.forward(req, resp);

	}

}
