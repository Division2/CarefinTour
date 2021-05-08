package com.spring.ex.vo;

public class NoticeBoardVO {
	private int nId;
	private String title;
	private String content;
	private String important;
	private Object reDate;
	private int hit;
	
	public int getnId() {
		return nId;
	}
	public void setnId(int nId) {
		this.nId = nId;
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
	public String getImportant() {
		return important;
	}
	public void setImportant(String important) {
		this.important = important;
	}
	public Object getReDate() {
		return reDate;
	}
	public void setReDate(Object reDate) {
		this.reDate = reDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
}