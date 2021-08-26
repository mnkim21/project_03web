package com.team6.cinema.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.team6.cinema.DBUtil;
import com.team6.cinema.question.QuestionDTO;


/***
 * 공지사항 DAO 클래스
 * @author 6조
 *
 */
public class NoticeDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public NoticeDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			e.getStackTrace();
		}

	}

	public int getTotalCount() {

		try {

			String sql = "select count(*) as cnt from tblNotice";

			stat = conn.createStatement();

			rs = stat.executeQuery(sql);

			if (rs.next()) {

				return rs.getInt("cnt");

			}

		} catch (Exception e) {
		}

		return 0;
	}

	public ArrayList<NoticeDTO> noticeList(int begin, int end) {

		try {

			String sql = "select * from vwNotice where  rnum between ? and ?";

			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, begin);
			pstat.setInt(2, end);

			rs = pstat.executeQuery();

			ArrayList<NoticeDTO> nList = new ArrayList<NoticeDTO>();

			while (rs.next()) {
				NoticeDTO dto = new NoticeDTO();

				dto.setNoticeSeq(rs.getString("noticeSeq"));
				dto.setNoticeTime(rs.getString("noticeTime"));
				dto.setNoticeContent(rs.getString("noticeContent"));
				dto.setNoticeDate(rs.getString("noticeDate"));
				dto.setRnum(rs.getString("rnum"));

				nList.add(dto);
			}

			return nList;

		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}

}
