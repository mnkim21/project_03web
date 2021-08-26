package com.team6.cinema.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 관리자 유저 관리페이지
 * @author 6조
 *
 */
@WebServlet("/admin/adminuserlist.do") // web.xml을 작성 안해도됨
public class AdminUserList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/adminuserlist.jsp");
		dispatcher.forward(req, resp);
	}

}