package com.team6.cinema.notice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 공지사항 메인 클래스
 * @author 6조
 *
 */
@WebServlet("/notice/noticemain.do") // web.xml을 작성 안해도됨
public class NoticeMain extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		// 페이징 처리
				int nowPage = 0; // 현재 페이지 번호
				int totalCount = 0; // 총 게시물 수
				int pageSize = 10; // 한 페이지당 출력할 게시물 수
				int totalPage = 0; // 총 페이지 수
				int begin = 0; // 가져올 게시물 시작 위치
				int end = 0; // 가져올 게시물 끝 위치
				int n = 0; // 페이지바 제작
				int loop = 0; // 페이지바 제작
				int blockSize = 10; // 페이지바 제작

				NoticeDAO dao = new NoticeDAO();

				// list.do > list.do?page=1
				// list.do?page=

				String page = req.getParameter("page");

				if (page == null || page.equals("")) {
					nowPage = 1;
				} else {
					nowPage = Integer.parseInt(page);
				}

				// nowPage > 현재 페이지
				// 1페이지 -> where rnum between 1 and 10
				// 2페이지 -> where rnum between 11 and 20
				// 3페이지 -> where rnum between 21 and 30

				begin = ((nowPage - 1) * pageSize) + 1;
				end = begin + pageSize - 1;

				// 총 게시물 수 알아내기
				totalCount = dao.getTotalCount();

				totalPage = (int) Math.ceil((double) totalCount / pageSize);

				String pagebar = "<div id=\"nav\">";

				loop = 1; // while루프 변수
				n = ((nowPage - 1) / blockSize) * blockSize + 1; // 출력되는 페이지 번호

				if (n == 1) {
					pagebar += String.format("<div>\r\n"
							+ "					<button type=\"button\" class=\"btn_image\" id=\"img_btn_left\" disabled>\r\n"
							+ "						<img src=\"/web_team6/asset/images/chevron-left.svg\">\r\n"
							+ "					</button>\r\n" + "				</div>" + "<div id=\"nav_content\">");
				} else {
					pagebar += String.format("<div>\r\n"
							+ "					<button type=\"button\" class=\"btn_image\" id=\"img_btn_left\" onclick=\"location.href='/web_team6/notice/noticemain.do?page=%d'\">\r\n"
							+ "						<img src=\"/web_team6/asset/images/chevron-left.svg\">\r\n"
							+ "					</button>\r\n" + "				</div>" + "<div id=\"nav_content\">", n - 1);
				}

				// 페이지 링크

				if (totalPage == 0) {
					pagebar += "<a href=\"#\" rel=\"0\" class=\"\">1</a>";
				}

				while (!(loop > blockSize || n > totalPage)) {
					pagebar += String.format(
							"<a href=\"/web_team6/notice/noticemain.do?page=%d\" rel=\"0\" class=\"\">%d</a> ", n, n);

					loop++;
					n++;
				}

				if (n > totalPage) {
					pagebar += String.format("</div><div>\r\n"
							+ "					<button type=\"button\" class=\"btn_image\" id=\"img_btn_right\" disabled>\r\n"
							+ "						<img src=\"/web_team6/asset/images/chevron-right.svg\">\r\n"
							+ "					</button>\r\n" + "				</div>");
				} else {
					pagebar += String.format("</div><div>\r\n"
							+ "					<button type=\"button\" class=\"btn_image\" id=\"img_btn_right\" onclick=\"location.href='/web_team6/notice/noticemain.do?page=%d'\">\r\n"
							+ "						<img src=\"/web_team6/asset/images/chevron-right.svg\">\r\n"
							+ "					</button>\r\n" + "				</div>", n);
				}

				pagebar += "</div>";

				ArrayList<NoticeDTO> nList = dao.noticeList(begin, end);
				
				nList.stream().forEach(dto ->{
					
					dto.setNoticeDate(dto.getNoticeDate().substring(0,10));
					
				});

				req.setAttribute("totalCount", totalCount);
				req.setAttribute("nList", nList);
				req.setAttribute("pagebar", pagebar);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/notice/noticemain.jsp");
		dispatcher.forward(req, resp);
	}

}
