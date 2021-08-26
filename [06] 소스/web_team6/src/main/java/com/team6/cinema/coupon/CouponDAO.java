package com.team6.cinema.coupon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.team6.cinema.DBUtil;

/***
 * 쿠폰 DAO 클래스
 * @author 6조
 *
 */
public class CouponDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public CouponDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			e.getStackTrace();
		}

	}

	public int getMyCouponCount(String my_id) {

		try {
			
			String sql = "select count(*) as cnt from tblCouponHave\r\n"
					+ "where userSeq=(select userSeq from tblUser where userId = ?)";
			
			pstat=conn.prepareStatement(sql);
			
			pstat.setString(1, my_id);
			
			rs=pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return 0;
	}

}













































































