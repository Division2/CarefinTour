package com.spring.ex.vo;

public class MileageVO {
	private int mId;
	private String userId;
	private String type;
	private String content;
	private int saving;
	private int using;
	private int remainder;
	private Object earnDate;
	private Object expirationDate;
	
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getSaving() {
		return saving;
	}
	public void setSaving(int saving) {
		this.saving = saving;
	}
	public int getUsing() {
		return using;
	}
	public void setUsing(int using) {
		this.using = using;
	}
	public int getRemainder() {
		return remainder;
	}
	public void setRemainder(int remainder) {
		this.remainder = remainder;
	}
	public Object getEarnDate() {
		return earnDate;
	}
	public void setEarnDate(Object earnDate) {
		this.earnDate = earnDate;
	}
	public Object getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(Object expirationDate) {
		this.expirationDate = expirationDate;
	}
}