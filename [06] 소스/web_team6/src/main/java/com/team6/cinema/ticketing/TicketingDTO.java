package com.team6.cinema.ticketing;


/***
 * 예매 정보 DTO 클래스
 * (포스터,영화 한글명, 상영일, 상영시간, 극장 관명, 극장명, 극장지역)
 * @author 6조
 *
 */
public class TicketingDTO {
	
	private String moviePoster;
	private String movieKorName;
	private String scheduleDate;
	private String scheduleTime;
	private String theaterRoomName;
	private String theaterName;
	private String theaterArea;
	
	
	public String getMoviePoster() {
		return moviePoster;
	}
	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
	}
	public String getMovieKorName() {
		return movieKorName;
	}
	public void setMovieKorName(String movieKorName) {
		this.movieKorName = movieKorName;
	}
		
	public String getScheduleDate() {
		return scheduleDate;
	}
	public void setScheduleDate(String scheduleDate) {
		this.scheduleDate = scheduleDate;
	}
	public String getScheduleTime() {
		return scheduleTime;
	}
	public void setScheduleTime(String scheduleTime) {
		this.scheduleTime = scheduleTime;
	}
	public String getTheaterRoomName() {
		return theaterRoomName;
	}
	public void setTheaterRoomName(String theaterRoomName) {
		this.theaterRoomName = theaterRoomName;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	public String getTheaterArea() {
		return theaterArea;
	}
	public void setTheaterArea(String theaterArea) {
		this.theaterArea = theaterArea;
	}
	
	
}
