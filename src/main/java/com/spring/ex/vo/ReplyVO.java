package com.spring.ex.vo;

public class ReplyVO {
	private int prrId;
	private int prId;
	private String UserID;
	private String Content;
	private Object regDate;
	private String answerContent;
	
	public int getPrrId() {
		return prrId;
	}
	public void setPrrId(int prrId) {
		this.prrId = prrId;
	}
	public int getPrId() {
		return prId;
	}
	public void setPrId(int prId) {
		this.prId = prId;
	}
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Object getRegDate() {
		return regDate;
	}
	public void setRegDate(Object regDate) {
		this.regDate = regDate;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	
}