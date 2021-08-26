package com.team6.cinema.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 관리자가 스토어 제품을 수정하는 페이지
 * @author 차소현
 *
 */

@WebServlet("/store/storeedit.do")
public class StoreEdit extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storeedit.jsp");
		dispatcher.forward(req, resp);

	}

}