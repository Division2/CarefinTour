package com.spring.ex.vo;

public class MileageVO {
	private int MID;
	private String UserID;
	private String Type;
	private String Content;
	private int Saving;
	private int Using;
	private int Remainder;
	private Object EarnDate;
	private Object ExpirationDate;
	
	public int getMID() {
		return MID;
	}
	public void setMID(int mID) {
		MID = mID;
	}
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public int getSaving() {
		return Saving;
	}
	public void setSaving(int saving) {
		Saving = saving;
	}
	public int getUsing() {
		return Using;
	}
	public void setUsing(int using) {
		Using = using;
	}
	public int getRemainder() {
		return Remainder;
	}
	public void setRemainder(int remainder) {
		Remainder = remainder;
	}
	public Object getEarnDate() {
		return EarnDate;
	}
	public void setEarnDate(Object earnDate) {
		EarnDate = earnDate;
	}
	public Object getExpirationDate() {
		return ExpirationDate;
	}
	public void setExpirationDate(Object expirationDate) {
		ExpirationDate = expirationDate;
	}
}