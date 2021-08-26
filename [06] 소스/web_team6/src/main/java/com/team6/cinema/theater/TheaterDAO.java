package com.team6.cinema.theater;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.team6.cinema.DBUtil;


/***
 * 극장 DAO 클래스
 * @author 6조
 *
 */
public class TheaterDAO {
	
	
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public TheaterDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			e.getStackTrace();
		}

	}


	public ArrayList<TheaterDTO> getTheater() {
		
		try {
			
			String sql = "select * from tblTheater";
			
			ArrayList<TheaterDTO> list = new ArrayList<TheaterDTO>(); 
			
			stat = conn.createStatement();
			
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				TheaterDTO dto = new TheaterDTO();
				
				dto.setTheaterSeq(rs.getString("theaterSeq"));
				dto.setTheaterName(rs.getString("theaterName"));
				dto.setTheaterArea(rs.getString("theaterArea"));
				dto.setTheaterAddress(rs.getString("theaterAddress"));
				dto.setTheaterInfo(rs.getString("theaterInfo"));
				dto.setTheaterTitle(rs.getString("theaterTitle"));
				dto.setLat(rs.getString("lat"));
				dto.setLng(rs.getString("lng"));
				
			
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			
		}
		
		return null;
	}


	public String myTheaterNum(String id) {
		
		try {
			
			
			String sql = "select t.theaterSeq as theater from tblTheater t inner join tblUser u on t.theaterName = u.userTheater where u.userId=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				return rs.getString("theater");
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
