package com.team6.cinema.event;

/**
 * 이벤트 DTO페이지
 * @author 허주원
 *
 */
public class EventDTO {

	private String eventseq;
	private String eventtitle;
	private String eventthumbnail;
	private String eventposter;
	private String eventtype;
	private String eventstart;
	private String eventend;
	private String eventregdate;
	/**  get 이벤트 번호. */
	public String getEventseq() {
		return eventseq;
	}
	/**  set 이벤트 번호. */
	public void setEventseq(String eventseq) {
		this.eventseq = eventseq;
	}
	/**  get 이벤트 제목. */
	public String getEventtitle() {
		return eventtitle;
	}
	/**  set 이벤트 제목. */
	public void setEventtitle(String eventtitle) {
		this.eventtitle = eventtitle;
	}
	/**  get 이벤트 썸네일. */
	public String getEventthumbnail() {
		return eventthumbnail;
	}
	/**  set 이벤트 썸네일. */
	public void setEventthumbnail(String eventthumbnail) {
		this.eventthumbnail = eventthumbnail;
	}
	/**  get 이벤트 포스터. */
	public String getEventposter() {
		return eventposter;
	}
	/**  set 이벤트 포스터. */
	public void setEventposter(String eventposter) {
		this.eventposter = eventposter;
	}
	/**  get 이벤트 분류. */
	public String getEventtype() {
		return eventtype;
	}
	/**  set 이벤트 분류. */
	public void setEventtype(String eventtype) {
		this.eventtype = eventtype;
	}
	/**  get 이벤트 시작일. */
	public String getEventstart() {
		return eventstart;
	}
	/**  set 이벤트 시작일. */
	public void setEventstart(String eventstart) {
		this.eventstart = eventstart;
	}
	/**  get 이벤트 종료일. */
	public String getEventend() {
		return eventend;
	}
	/**  set 이벤트 종료일. */
	public void setEventend(String eventend) {
		this.eventend = eventend;
	}
	/**  get 이벤트 등록일. */
	public String getEventregdate() {
		return eventregdate;
	}
	/**  set 이벤트 등록일. */
	public void setEventregdate(String eventregdate) {
		this.eventregdate = eventregdate;
	}
	@Override
	/**  이벤트 정보 */
	public String toString() {
		return "EventDTO [eventseq=" + eventseq + ", eventtitle=" + eventtitle + ", eventthumbnail=" + eventthumbnail
				+ ", eventposter=" + eventposter + ", eventtype=" + eventtype + ", eventstart=" + eventstart
				+ ", eventend=" + eventend + ", eventregdate=" + eventregdate + "]";
	}
	
	
	
}
