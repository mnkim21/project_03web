package com.team6.cinema.question;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.team6.cinema.DBUtil;

/**
 * 자주 묻는 질문 DAO 페이지
 * @author 허주원
 *
 */
public class QuestionDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public QuestionDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			e.getStackTrace();
		}

	}
	/**  자주묻는 질문 갯수 */
	public int getTotalCount() {
		
		try {
			
			String sql ="select count(*) as cnt from tblQuestion";
			
			stat = conn.createStatement();
			
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				
				return rs.getInt("cnt");
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return 0;
	}
	
	/**  자주묻는 질문 리스트 */
	public ArrayList<QuestionDTO> questionList(int begin, int end) {
		
		try {
			
			String sql = "select * from vwQuestion where  rnum between ? and ? order by rnum asc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, begin);
			pstat.setInt(2, end);
			
			rs=pstat.executeQuery();
			
			ArrayList<QuestionDTO> qList = new ArrayList<QuestionDTO>();
			
			while(rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				
				dto.setQuestionSeq(rs.getString("questionseq"));
				dto.setQuestionType(rs.getString("questionType"));
				dto.setQuestionTitle(rs.getString("questionTitle"));
				dto.setQuestionContent(rs.getString("questionContent"));
				dto.setRnum(rs.getString("rnum"));
				
				qList.add(dto);
			}

			return qList;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return null;
	}

}










































