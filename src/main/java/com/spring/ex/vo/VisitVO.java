package com.spring.ex.vo;

public class VisitVO {
	private int visitor_id;
	private String visitor_ip;
	private String visitor_refer;
	private String visitor_browser;
	private Object visit_time;
	
	public int getVisitor_id() {
		return visitor_id;
	}
	public void setVisitor_id(int visitor_id) {
		this.visitor_id = visitor_id;
	}
	public String getVisitor_ip() {
		return visitor_ip;
	}
	public void setVisitor_ip(String visitor_ip) {
		this.visitor_ip = visitor_ip;
	}
	public String getVisitor_refer() {
		return visitor_refer;
	}
	public void setVisitor_refer(String visitor_refer) {
		this.visitor_refer = visitor_refer;
	}
	public String getVisitor_browser() {
		return visitor_browser;
	}
	public void setVisitor_browser(String visitor_browser) {
		this.visitor_browser = visitor_browser;
	}
	public Object getVisit_time() {
		return visit_time;
	}
	public void setVisit_time(Object visit_time) {
		this.visit_time = visit_time;
	}
}