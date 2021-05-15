package com.spring.ex.vo;

import java.sql.Date;

public class OrderVO {
	private int oid;
	private String userid;
	private int pid;
	private String productname;
	private int accumlatemileage;
	private int payment;
	private Date paymentdate;
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public int getAccumlatemileage() {
		return accumlatemileage;
	}
	public void setAccumlatemileage(int accumlatemileage) {
		this.accumlatemileage = accumlatemileage;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public Date getPaymentdate() {
		return paymentdate;
	}
	public void setPaymentdate(Date paymentdate) {
		this.paymentdate = paymentdate;
	}


}
