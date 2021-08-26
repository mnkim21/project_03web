package com.team6.cinema.event;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.team6.cinema.DBUtil;

/**
 * 이벤트 DAO페이지
 * @author 허주원
 *
 */
public class EventDAO {

	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public EventDAO() {
		
		try {
			
			conn = DBUtil.open();
			
		} catch (Exception e) {
			System.out.println("EventDAO.EventDAO()");
			e.printStackTrace();					
		}
		
	}
	
	
	public int add(EventDTO dto) {
		
		
		try {
			
			String sql =String.format("insert into tblEvent("+ "eventSeq,"+ "eventTitle,"+ "eventThumbnail,"
							+ "eventPoster,"+ "eventType,"+ "eventStartdate,"+ "eventEnddate,"+ "eventRegdate)"
							+ "values(seqEvent.nextVal,?,?,?,?,to_date('%s-%s-%s','yyyy-mm-dd'),to_date('%s-%s-%s','yyyy-mm-dd'),to_date('%s-%s-%s','yyyy-mm-dd'))",
								dto.getEventstart().split("-")[0],
										dto.getEventstart().split("-")[1],
												dto.getEventstart().split("-")[2],										
														dto.getEventend().split("-")[0],
																dto.getEventend().split("-")[1],
																		dto.getEventend().split("-")[2],
																				dto.getEventregdate().split("-")[0],
																						dto.getEventregdate().split("-")[1],
																								dto.getEventregdate().split("-")[2]);																		
				pstat = conn.prepareStatement(sql);
				
				pstat.setString(1,dto.getEventtitle());
				pstat.setString(2,dto.getEventthumbnail());
				pstat.setString(3,dto.getEventposter());
				pstat.setString(4,dto.getEventtype());
						
				
				return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("EventDAO.add()");
			e.printStackTrace();
			
			
		}
		return 0;
		
	}//add(EventDTO dto)

	/**  이벤트 리스트 가져온다. */
	public ArrayList<EventDTO> getEventList() {
		
		
		
		try {
			
			String sql = "select * from tblEvent";
			
			ArrayList<EventDTO> list = new ArrayList<EventDTO>();
			
			stat = conn.createStatement();
			
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				EventDTO dto = new EventDTO();
				
				dto.setEventseq(rs.getString("eventSeq"));
				dto.setEventtitle(rs.getString("eventTitle"));
				dto.setEventthumbnail(rs.getString("eventThumbnail"));
				dto.setEventposter(rs.getString("eventPoster"));
				dto.setEventtype(rs.getString("eventType"));
				dto.setEventregdate(rs.getString("eventRegdate"));
				dto.setEventstart(rs.getString("eventStartdate"));
				dto.setEventend(rs.getString("eventEnddate"));

				list.add(dto);
				
			}
			
			return list;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}//class
