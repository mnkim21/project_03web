package com.team6.cinema.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/***
 * 회원 수정 클래스
 * @author 6조
 *
 */
@WebServlet("/user/usereditok.do") // web.xml을 작성 안해도됨
public class UserEditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path= req.getServletContext().getRealPath("/asset/files");
		int size = 1024 * 1024 * 20; //20MB
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String pw ="";
		String email="";
		String email1="";
		String tel="";
		String question="";
		String answer="";
		String prefer_theater="";
		String prefer_genre="";
		String filename = "";

		try{
			
			//파일 업로드 처리 -> 외부 입출력 -> try 필수
			//request -> MultipartRequest
			// 이 객체를 생성하는 순간 업로드 된 파일은 처리를 마치고 첨부파일 폴더에 저장되어 있다.
			MultipartRequest multi = new MultipartRequest(
					req,// 기존의 request Wrapping 클래스
					path,//업로드 폴더 지정
					size,//업로드 크기 지정
					"UTF-8",//인코딩 방식 지정
					new DefaultFileRenamePolicy()
					);
					
			// 데이터 수신하기
			pw = multi.getParameter("pw");
			email = multi.getParameter("email");
			email1 = multi.getParameter("email1");
			tel = multi.getParameter("tel");
			question = multi.getParameter("question");
			answer = multi.getParameter("answer");
			prefer_theater = multi.getParameter("prefer_theater");
			prefer_genre = multi.getParameter("prefer_genre");
			
			
					
					
			//파일 정보 수신하기(******)
			// - 첨부 파일 이름 가져오기
			
			
			// 실제로 저장된 파일명(넘버링 O)
			filename = multi.getFilesystemName("attach"); //<input type="file" name="attach" />
			
			if(!(filename.contains(".jpg")||filename.contains(".gif")||filename.contains(".png")||filename.contains(".svg"))||filename==null) {
				filename="profile.png";
			}
			
		}catch(Exception e){
			System.out.println(e.getMessage());
			
			
		}
		
		if(filename==null) {
			filename="profile.png";
		}
		
		
		UserDTO dto = new UserDTO();
		UserDAO dao = new UserDAO();
		
		dto.setUserId(id);
		dto.setUserPw(pw);
		dto.setUserEmail(email+"@"+email1);
		dto.setUserTel(tel);
		dto.setUserQuestion(question);
		dto.setUserAnswer(answer);
		dto.setUserTheater(prefer_theater);
		dto.setUserGenre(prefer_genre);
		dto.setUserImage("/"+path.substring(path.lastIndexOf("\\")+1)+"/"+filename);
		
		int result = dao.userEditInfo(dto);		
		
			
		
		req.setAttribute("result", result);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/usereditok.jsp");
		dispatcher.forward(req, resp);
	}

}
