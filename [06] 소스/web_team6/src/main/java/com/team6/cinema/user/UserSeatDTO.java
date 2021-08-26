package com.team6.cinema.user;

/***
 * 회원 좌석 DTO 클래스
 * @author 6조
 *
 */
public class UserSeatDTO {
	
	private String seatValue;
	private String seat;
	private String cnt;
	
	
	
	public String getCnt() {
		return cnt;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	public String getSeatValue() {
		return seatValue;
	}
	public void setSeatValue(String seatValue) {
		this.seatValue = seatValue;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	
	
	
	
	
	

}
