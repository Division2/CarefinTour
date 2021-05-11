package com.spring.ex.vo;

import java.sql.Date;

public class TravelPhotoVO {
	private int prid;
	private String title;
	private String content;
	private String name;
	private String image;
	private Date redate;
	private String s_file_name;
	private String o_file_name;
	private int good;
	private int bad;
	private int hit;

	
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getBad() {
		return bad;
	}
	public void setBad(int bad) {
		this.bad = bad;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getO_file_name() {
		return o_file_name;
	}
	public void setO_file_name(String o_file_name) {
		this.o_file_name = o_file_name;
	}
	public int getPrid() {
		return prid;
	}
	public void setPrid(int prid) {
		this.prid = prid;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getRedate() {
		return redate;
	}
	public void setRedate(Date redate) {
		this.redate = redate;
	}
	public String getS_file_name() {
		return s_file_name;
	}
	public void setS_file_name(String s_file_name) {
		this.s_file_name = s_file_name;
	}
	
	
	
	
}
