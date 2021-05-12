package com.spring.ex.vo;

public class MemberVO {
	private String UserID;
	private String Password;
	private String Name;
	private String Grade;
	private String Email;
	private String Phone;
	private String Birth;
	private int Sex;
	private String Address;
	private int Mileage;
	private String Comment;
	private Object lastDate;
	
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getGrade() {
		return Grade;
	}
	public void setGrade(String grade) {
		Grade = grade;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getBirth() {
		return Birth;
	}
	public void setBirth(String birth) {
		Birth = birth;
	}
	public int getSex() {
		return Sex;
	}
	public void setSex(int sex) {
		Sex = sex;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public int getMileage() {
		return Mileage;
	}
	public void setMileage(int mileage) {
		Mileage = mileage;
	}
	public String getComment() {
		return Comment;
	}
	public void setComment(String comment) {
		Comment = comment;
	}
	public Object getLastDate() {
		return lastDate;
	}
	public void setLastDate(Object lastDate) {
		this.lastDate = lastDate;
	}
}