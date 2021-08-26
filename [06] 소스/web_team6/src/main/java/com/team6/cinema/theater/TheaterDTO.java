package com.team6.cinema.theater;

/***
 * 극장 정보를 담는 극장DTO 클래스
 * (극장번호,극장명,극장지역,극장주소,극장정보,극장제목,위도,경도)
 * @author 6조
 *
 */
public class TheaterDTO {
	
	private String theaterSeq;
	private String theaterName;
	private String theaterArea;
	private String theaterAddress;
	private String theaterInfo;
	private String theaterTitle;
	private String lat;
	private String lng;
	
	
	
	public String getTheaterSeq() {
		return theaterSeq;
	}
	public void setTheaterSeq(String theaterSeq) {
		this.theaterSeq = theaterSeq;
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
	public String getTheaterAddress() {
		return theaterAddress;
	}
	public void setTheaterAddress(String theaterAddress) {
		this.theaterAddress = theaterAddress;
	}
	public String getTheaterInfo() {
		return theaterInfo;
	}
	public void setTheaterInfo(String theaterInfo) {
		this.theaterInfo = theaterInfo;
	}
	public String getTheaterTitle() {
		return theaterTitle;
	}
	public void setTheaterTitle(String theaterTitle) {
		this.theaterTitle = theaterTitle;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	
	
	

}
