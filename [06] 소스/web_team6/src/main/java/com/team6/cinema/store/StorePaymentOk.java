package com.team6.cinema.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team6.cinema.user.UserDAO;
import com.team6.cinema.user.UserDTO;

/***
 * 스토어 제품 결제 확인 클래스
 * @author 6조
 *
 */
@WebServlet("/store/storepaymentok.do") // web.xml을 작성 안해도됨
public class StorePaymentOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String itemSeq=req.getParameter("itemSeq");
		String count=req.getParameter("count");
		
		HttpSession session = req.getSession();
		String my_id = (String)session.getAttribute("id");
		
		UserDAO uDao = new UserDAO();
		
		UserDTO uDto = uDao.getUserInfo(my_id);
		
		StoreDAO sDao = new StoreDAO();
		
		int result = sDao.addStoreHistory(uDto.getUserSeq(),itemSeq,count);
		
		
		req.setAttribute("result", result);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/store/storepaymentok.jsp");
		dispatcher.forward(req, resp);
	}

}