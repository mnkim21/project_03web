package com.team6.cinema.ticketing;

/***
 * 예매 정보 DTO 클래스
 * (영화일정번호,상영일,상영시간,극장번호,영화번호,극장 관명,좌석 수,영화한글명,영화장르,영화포스터,극장명,극장지역,영화 러닝타임)
 * @author 6조
 *
 */
public class TicketingDTO2 {
	
	
	private String scheduleSeq;
	private String scheduleDate;
	private String scheduleTime;
	private String theaterSeq;
	private String movieSeq;
	private String theaterRoomName;
	private String seatCount;
	private String movieKorName;
	private String movieGenre;
	private String moviePoster;
	private String theaterName;
	private String theaterArea;
	private String movieTime;
	
	
	
	
	public String getMovieTime() {
		return movieTime;
	}
	public void setMovieTime(String movieTime) {
		this.movieTime = movieTime;
	}
	public String getScheduleSeq() {
		return scheduleSeq;
	}
	public void setScheduleSeq(String scheduleSeq) {
		this.scheduleSeq = scheduleSeq;
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
	public String getTheaterSeq() {
		return theaterSeq;
	}
	public void setTheaterSeq(String theaterSeq) {
		this.theaterSeq = theaterSeq;
	}
	
	public String getMovieSeq() {
		return movieSeq;
	}
	public void setMovieSeq(String movieSeq) {
		this.movieSeq = movieSeq;
	}

	public String getTheaterRoomName() {
		return theaterRoomName;
	}
	public void setTheaterRoomName(String theaterRoomName) {
		this.theaterRoomName = theaterRoomName;
	}
	public String getSeatCount() {
		return seatCount;
	}
	public void setSeatCount(String seatCount) {
		this.seatCount = seatCount;
	}
	public String getMovieKorName() {
		return movieKorName;
	}
	public void setMovieKorName(String movieKorName) {
		this.movieKorName = movieKorName;
	}
	public String getMovieGenre() {
		return movieGenre;
	}
	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}
	public String getMoviePoster() {
		return moviePoster;
	}
	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
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
