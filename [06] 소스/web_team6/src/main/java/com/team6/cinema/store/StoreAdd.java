package com.team6.cinema.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 관리자가 스토어 제품 추가하는 페이지로 이동하는 클래스
 * @author 차소현
 *
 */


@WebServlet("/store/storeadd.do")
public class StoreAdd extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//JSP로 이동하는 페이지
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storeadd.jsp");
		dispatcher.forward(req, resp);

	}
	

}
