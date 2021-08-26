package com.team6.cinema.question;

/**
 * 자주 묻는 질문 DTO페이지
 * @author 허주원
 *
 */
public class QuestionDTO {
	
	private String questionSeq;
	private String questionType;
	private String questionTitle;
	private String questionContent;
	private String rnum;
	
	
	
	/**  get 자주묻는 질문 등록 번호 */
	public String getRnum() {
		return rnum;
	}
	/**  set 자주묻는 질문 등록 번호 */
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	/**  get 자주묻는 질문 번호 */
	public String getQuestionSeq() {
		return questionSeq;
	}
	/**  set 자주묻는 질문 번호 */
	public void setQuestionSeq(String questionSeq) {
		this.questionSeq = questionSeq;
	}
	/**  get 자주묻는 질문 분류 */
	public String getQuestionType() {
		return questionType;
	}
	/**  set 자주묻는 질문 분류 */
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}
	/**  get 자주묻는 질문 제목 */
	public String getQuestionTitle() {
		return questionTitle;
	}
	/**  set 자주묻는 질문 제목 */
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	/**  get 자주묻는 질문 내용 */
	public String getQuestionContent() {
		return questionContent;
	}
	/**  set 자주묻는 질문 내용 */
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	
	
	

}
