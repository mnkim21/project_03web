package com.team6.cinema.ticketing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.team6.cinema.DBUtil;

/***
 * 예매 DAO 클래스
 * @author 6조
 *
 */
public class TicketingDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public TicketingDAO() {

		try {
			conn = DBUtil.open();
		} catch (Exception e) {
			System.out.println("TicketingDAO.TicketingDAO()");
			e.printStackTrace();
		}
	}

	
	/***
	 * 영화 포스터 불러오는 메소드
	 * @return 포스터, 영화한글명
	 */
	public ArrayList<TicketingDTO> list() {

		try {

			String sql = "select distinct moviePoster, movieKorName from tblSchedule inner join tblMovie on tblMovie.movieSeq = tblSchedule.movieSeq inner join tblTheater on tblTheater.theaterSeq = tblSchedule.theaterSeq";

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<TicketingDTO> list = new ArrayList<TicketingDTO>();

			while (rs.next()) {

				TicketingDTO dto = new TicketingDTO();

				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieKorName(rs.getString("movieKorName"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			System.out.println("TicketingDAO.list()");
			e.printStackTrace();
		}

		return null;
	}

	// Ticketing1 지역(중복제거)
	/***
	 * 극장 지역 가져오는 메소드
	 * @return 극장 지역
	 */
	public ArrayList<TicketingDTO> list2() {
		try {

			String sql = "select distinct theaterArea, count(distinct theaterName) from tblSchedule inner join tblMovie on tblMovie.movieSeq = tblSchedule.movieSeq inner join tblTheater on tblTheater.theaterSeq = tblSchedule.theaterSeq group by theaterArea order by count(distinct theaterName) desc";

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<TicketingDTO> list2 = new ArrayList<TicketingDTO>();

			while (rs.next()) {

				TicketingDTO dto2 = new TicketingDTO();

				dto2.setTheaterArea(rs.getString("theaterArea"));

				list2.add(dto2);

			}

			return list2;

		} catch (Exception e) {
			System.out.println("TicketingDAO.list2()");
			e.printStackTrace();
		}
		return null;
	}

	// Ticketing1 지역별 극장명
	/***
	 * 극장명 불러오는 메소드
	 * @return 극장명
	 */
	public ArrayList<TicketingDTO> list3() {
		try {
			String sql = "select distinct theaterArea, theaterName from tblSchedule inner join tblMovie on tblMovie.movieSeq = tblSchedule.movieSeq inner join tblTheater on tblTheater.theaterSeq = tblSchedule.theaterSeq order by theaterArea";

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<TicketingDTO> list3 = new ArrayList<TicketingDTO>();

			while (rs.next()) {

				TicketingDTO dto3 = new TicketingDTO();

				dto3.setTheaterArea(rs.getString("theaterArea"));
				dto3.setTheaterName(rs.getString("theaterName"));

				list3.add(dto3);
			}

			return list3;

		} catch (Exception e) {
			System.out.println("TicketingDAO.list3()");
			e.printStackTrace();
		}

		return null;
	}

	/***
	 * 선택한 영화의 일정을 가져오는 메소드
	 * @param mName
	 * @param theater
	 * @param date
	 * @return 영화 일정 목록 반환
	 */
	public ArrayList<TicketingDTO2> getSchedule(String mName, String theater, String date) {

		try {

			String sql = "select * from vwTicketingSchedule where movieKorName=? and theaterName=? and scheduleDate=? and scheduleTime>sysdate";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, mName);
			pstat.setString(2, theater);
			pstat.setString(3, date);

			rs = pstat.executeQuery();

			ArrayList<TicketingDTO2> list = new ArrayList<TicketingDTO2>();

			while (rs.next()) {

				TicketingDTO2 dto = new TicketingDTO2();

				dto.setScheduleSeq(rs.getString("scheduleSeq"));
				dto.setScheduleDate(rs.getString("scheduleDate"));
				dto.setScheduleTime(rs.getString("scheduleTime"));
				dto.setTheaterSeq(rs.getString("theaterSeq"));
				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setTheaterRoomName(rs.getString("theaterRoomName"));
				dto.setSeatCount(rs.getString("seatCount"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setTheaterName(rs.getString("theaterName"));
				dto.setTheaterArea(rs.getString("theaterArea"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {

		}

		return null;
	}

	/***
	 * 선택한 영화의 포스터를 가져오는 메소드
	 * @param mName
	 * @return 포스터
	 */
	public String getSelectPoster(String mName) {

		try {

			String sql = "select moviePoster from tblMovie where movieKorName=?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, mName);

			rs = pstat.executeQuery();

			if (rs.next()) {

				return rs.getString("moviePoster");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	/***
	 * 선택한 영화(한 개)의 정보를 가져오는 메소드
	 * @param mName
	 * @param theater
	 * @param date
	 * @param time
	 * @return 영화정보 dto
	 */
	public TicketingDTO2 getDetailSchedule(String mName, String theater, String date, String time) {

		try {

			String sql = "select * from vwTicketingSchedule where movieKorName=? and theaterName=? and scheduleDate=? and to_char(scheduleTime,'hh24:mi:ss') like '%%' || ? ||'%%'";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, mName);
			pstat.setString(2, theater);
			pstat.setString(3, date);
			pstat.setString(4, time);

			rs = pstat.executeQuery();

			if (rs.next()) {

				TicketingDTO2 dto = new TicketingDTO2();

				dto.setScheduleSeq(rs.getString("scheduleSeq"));
				dto.setScheduleDate(rs.getString("scheduleDate"));
				dto.setScheduleTime(rs.getString("scheduleTime"));
				dto.setTheaterSeq(rs.getString("theaterSeq"));
				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setTheaterRoomName(rs.getString("theaterRoomName"));
				dto.setSeatCount(rs.getString("seatCount"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setTheaterName(rs.getString("theaterName"));
				dto.setTheaterArea(rs.getString("theaterArea"));

				return dto;

			}

		} catch (Exception e) {

		}

		return null;
	}

	/***
	 * 예매 추가하기 메소드
	 * @param my_id
	 * @param scheduleSeq
	 * @return 예매 성공 유무
	 */
	public int ticketingAdd(String my_id, String scheduleSeq) {

		try {

			String sql = "insert into tblTicketing values(SeqTicketing.nextVal,(select userSeq from tblUser where userId=?),?,sysdate)";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, my_id);
			pstat.setString(2, scheduleSeq);

			return pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	/***
	 * 회원의 예매번호를 가져오는 메소드
	 * @param my_id
	 * @param scheduleSeq
	 * @return 예매번호 
	 */
	public String getTicketingSeq(String my_id, String scheduleSeq) {

		try {

			String sql = "select ticketingSeq from tblTicketing where userSeq=(select userSeq from tblUser where userId=?) and scheduleSeq=?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, my_id);
			pstat.setString(2, scheduleSeq);

			rs = pstat.executeQuery();

			if (rs.next()) {

				return rs.getString("ticketingSeq");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	/***
	 * 회원 예매시 좌석 정보 insert 메소드
	 * @param ticketingSeq
	 * @param seatRow
	 * @param seatColumn
	 * @param adult
	 * @param teen
	 * @param child
	 * @return 예매 성공유무 
	 */
	public int userSeatAdd(String ticketingSeq, ArrayList<String> seatRow, ArrayList<String> seatColumn, int adult,
			int teen, int child) {
		String sql = "";
		int count =0;
		try {

			for (int i = 0; i < adult + teen + child; i++) {
				sql = "insert into tblUserSeat values(seqUserSeat.nextVal,?,?,?,?)";
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, ticketingSeq);

				pstat.setString(2, seatRow.get(i));
				pstat.setString(3, seatColumn.get(i));
				if (i < adult) {
					pstat.setString(4, "성인");
				}else if(i <adult+teen) {
					pstat.setString(4, "청소년");
				}else if(i <adult+teen+child) {
					pstat.setString(4, "어린이");
				}
				
				count+=pstat.executeUpdate();
			}
			
			return count;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

}
