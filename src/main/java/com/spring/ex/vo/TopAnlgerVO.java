package com.spring.ex.vo;

import java.sql.Date;

public class TopAnlgerVO {
	private int tid;
	private int AID;
	private String UserID;
	private String name;
	private double fishsize;
	private String fishname;
	private Date redate;
	private String s_file_fish;
	private int ranking;
	private int status;
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getAID() {
		return AID;
	}
	public void setAID(int aID) {
		AID = aID;
	}
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getFishsize() {
		return fishsize;
	}
	public void setFishsize(double fishsize) {
		this.fishsize = fishsize;
	}
	public String getFishname() {
		return fishname;
	}
	public void setFishname(String fishname) {
		this.fishname = fishname;
	}
	public Date getRedate() {
		return redate;
	}
	public void setRedate(Date redate) {
		this.redate = redate;
	}
	public String getS_file_fish() {
		return s_file_fish;
	}
	public void setS_file_fish(String s_file_fish) {
		this.s_file_fish = s_file_fish;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}