package com.spring.ex.vo;

import java.sql.Date;

public class TopAnlgerVO {
	private int tid;
	private String title;
	private double fishsize;
	private String s_file_fish;
	private String o_file_fish;
	private Date redate;
	private String content;
	private String name;
	private String fishname;
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getFishsize() {
		return fishsize;
	}
	public void setFishsize(double fishsize) {
		this.fishsize = fishsize;
	}
	public String getS_file_fish() {
		return s_file_fish;
	}
	public void setS_file_fish(String s_file_fish) {
		this.s_file_fish = s_file_fish;
	}
	public String getO_file_fish() {
		return o_file_fish;
	}
	public void setO_file_fish(String o_file_fish) {
		this.o_file_fish = o_file_fish;
	}
	public Date getRedate() {
		return redate;
	}
	public void setRedate(Date redate) {
		this.redate = redate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFishname() {
		return fishname;
	}
	public void setFishname(String fishname) {
		this.fishname = fishname;
	}
}