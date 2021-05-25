package com.spring.ex.vo;

public class FAQVO {
	private int fId;
	private String category;
	private String title;
	private String content;
	private int fcid;
	
	public int getfId() {
		return fId;
	}
	public void setfId(int fId) {
		this.fId = fId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getFcid() {
		return fcid;
	}
	public void setFcid(int fcid) {
		this.fcid = fcid;
	}
}