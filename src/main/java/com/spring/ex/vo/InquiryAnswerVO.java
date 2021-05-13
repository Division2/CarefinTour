package com.spring.ex.vo;

public class InquiryAnswerVO {
	private int aiId;
	private int iId;
	private String answerContent;
	private Object reDate;
	
	public int getAiId() {
		return aiId;
	}
	public void setAiId(int aiId) {
		this.aiId = aiId;
	}
	public int getiId() {
		return iId;
	}
	public void setiId(int iId) {
		this.iId = iId;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public Object getReDate() {
		return reDate;
	}
	public void setReDate(Object reDate) {
		this.reDate = reDate;
	}
}