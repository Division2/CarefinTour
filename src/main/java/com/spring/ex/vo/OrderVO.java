package com.spring.ex.vo;

import java.sql.Date;

public class OrderVO {
	private int oId;
	private String userId;
	private int pId;
	private String productname;
	private int accumlatemileage;
	private int payment;
	private Date paymentdate;
	
	public int getOId() {
		return oId;
	}
	public void setOid(int oId) {
		this.oId = oId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserid(String userId) {
		this.userId = userId;
	}
	public int getPId() {
		return pId;
	}
	public void setPId(int pId) {
		this.pId = pId;
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
