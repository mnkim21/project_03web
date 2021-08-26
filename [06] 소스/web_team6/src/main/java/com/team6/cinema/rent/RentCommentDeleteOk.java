package com.team6.cinema.rent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/***
 * 대관문의 댓글 삭제 클래스
 * @author 6조
 *
 */
@WebServlet("/rent/rentcommentdeleteok.do") // web.xml을 작성 안해도됨
public class RentCommentDeleteOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/rent/rentcommentdeleteok.jsp");
		dispatcher.forward(req, resp);
	}

}
