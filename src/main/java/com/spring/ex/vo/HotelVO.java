package com.spring.ex.vo;

import java.sql.Date;

public class HotelVO {
	private int pid;
	private String productname;
	private Date checkin;
	private Date checkout;
	private Date regdate;
	private int adultcount;
	private int smallcount;
	private int kidcount;
	private int adultprice;
	private int kidprice;
	private int smallkidprice;
	private String resname;
	
	public String getResname() {
		return resname;
	}
	public void setResname(String resname) {
		this.resname = resname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public Date getCheckin() {
		return checkin;
	}
	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}
	public Date getCheckout() {
		return checkout;
	}
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getAdultcount() {
		return adultcount;
	}
	public void setAdultcount(int adultcount) {
		this.adultcount = adultcount;
	}
	public int getSmallcount() {
		return smallcount;
	}
	public void setSmallcount(int smallcount) {
		this.smallcount = smallcount;
	}
	public int getKidcount() {
		return kidcount;
	}
	public void setKidcount(int kidcount) {
		this.kidcount = kidcount;
	}
	public int getAdultprice() {
		return adultprice;
	}
	public void setAdultprice(int adultprice) {
		this.adultprice = adultprice;
	}
	public int getKidprice() {
		return kidprice;
	}
	public void setKidprice(int kidprice) {
		this.kidprice = kidprice;
	}
	public int getSmallkidprice() {
		return smallkidprice;
	}
	public void setSmallkidprice(int smallkidprice) {
		this.smallkidprice = smallkidprice;
	}
	

}
