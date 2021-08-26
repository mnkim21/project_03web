package com.team6.cinema.rent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 대관 문의 메인 페이지를 불러오는 클래스
 * @author 허주원
 *
 */
@WebServlet("/rent/rentmain.do") 
public class RentMain extends HttpServlet {
	
	/**  get방식을 통해 페이지를 불러옵니다. */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/rent/rentmain.jsp");
		dispatcher.forward(req, resp);
	}

}
