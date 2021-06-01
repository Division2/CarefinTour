package com.spring.ex.vo;

import java.sql.Date;

public class OrderVO {
	private int oId;
	private int pId;
	private String productname;
	private String userId;
	private String name;
	private String phonenum;
	private int payment;
	private Object paymentdate;
	private int accumlatemileage;
	private int paymentstatus;
	private Date startdate;
	private Date orderdate;
	
	public int getoId() {
		return oId;
	}
	public void setoId(int oId) {
		this.oId = oId;
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public Object getPaymentdate() {
		return paymentdate;
	}
	public void setPaymentdate(Object paymentdate) {
		this.paymentdate = paymentdate;
	}
	public int getAccumlatemileage() {
		return accumlatemileage;
	}
	public void setAccumlatemileage(int accumlatemileage) {
		this.accumlatemileage = accumlatemileage;
	}
	public int getPaymentstatus() {
		return paymentstatus;
	}
	public void setPaymentstatus(int paymentstatus) {
		this.paymentstatus = paymentstatus;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
}