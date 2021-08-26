package com.team6.cinema.user;



/***
 * 회원의 예매정보를 담을 DTO 클래스
 * (극장번호,회원번호,스케줄번호,회원아이디,예매일,극장명,극장 관,상영일, 상영시간, 포스터,영화 한글명,영화 분류, 정렬순서,러닝타임)
 * @author 6조
 *
 */
public class MyTicketingDTO {

	private String ticketingSeq;
	private String userSeq;
	private String scheduleSeq;
	private String userId;
	private String ticketingDate;
	private String theaterName;
	private String theaterRoomName;
	private String scheduleDate;
	private String scheduleTime;
	private String moviePoster;
	private String movieKorname;
	private String movieFormat;
	private String rNum;
	private String movieTime;
	
	
	
	
	public String getScheduleSeq() {
		return scheduleSeq;
	}
	public void setScheduleSeq(String scheduleSeq) {
		this.scheduleSeq = scheduleSeq;
	}
	public String getMovieTime() {
		return movieTime;
	}
	public void setMovieTime(String movieTime) {
		this.movieTime = movieTime;
	}
	public String getTicketingSeq() {
		return ticketingSeq;
	}
	public void setTicketingSeq(String ticketingSeq) {
		this.ticketingSeq = ticketingSeq;
	}
	public String getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTicketingDate() {
		return ticketingDate;
	}
	public void setTicketingDate(String ticketingDate) {
		this.ticketingDate = ticketingDate;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	public String getTheaterRoomName() {
		return theaterRoomName;
	}
	public void setTheaterRoomName(String theaterRoomName) {
		this.theaterRoomName = theaterRoomName;
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
	public String getMoviePoster() {
		return moviePoster;
	}
	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
	}
	public String getMovieKorname() {
		return movieKorname;
	}
	public void setMovieKorname(String movieKorname) {
		this.movieKorname = movieKorname;
	}
	public String getMovieFormat() {
		return movieFormat;
	}
	public void setMovieFormat(String movieFormat) {
		this.movieFormat = movieFormat;
	}
	public String getrNum() {
		return rNum;
	}
	public void setrNum(String rNum) {
		this.rNum = rNum;
	}
	
	
	
}
