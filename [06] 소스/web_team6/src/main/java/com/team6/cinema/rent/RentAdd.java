package com.team6.cinema.rent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 대관 문의 추가 페이지를 불러오는 클래스
 * @author 허주원
 *
 */
@WebServlet("/rent/rentadd.do") // web.xml을 작성 안해도됨
public class RentAdd extends HttpServlet {
	/**  get방식을 통해 페이지를 불러옵니다. */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/rent/rentadd.jsp");
		dispatcher.forward(req, resp);
	}

}
