package com.spring.ex.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.spring.ex.vo.VisitVO;

public class VisitCounter implements HttpSessionListener  {

	//세션이 생성될 때 실행
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		
		//WebApplicationContext를 구현(Root Context)
		WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		//request로 날아온 접속자가 해당하는 Header의 IP 주소를 가져와서 담음
		String visitor_ip = request.getHeader("X-Forwarded-For");
		
		if(visitor_ip == null || visitor_ip.length() == 0 || "unknown".equalsIgnoreCase(visitor_ip)) {
			visitor_ip = request.getHeader("Proxy-Client-IP");
		}
		if(visitor_ip == null || visitor_ip.length() == 0 || "unknown".equalsIgnoreCase(visitor_ip)) {
			visitor_ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if(visitor_ip == null || visitor_ip.length() == 0 || "unknown".equalsIgnoreCase(visitor_ip)) {
			visitor_ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if(visitor_ip == null || visitor_ip.length() == 0 || "unknown".equalsIgnoreCase(visitor_ip)) {
			visitor_ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if(visitor_ip == null || visitor_ip.length() == 0 || "unknown".equalsIgnoreCase(visitor_ip)) {
			visitor_ip = request.getRemoteAddr();
		}
		
		//request로 날아온 Header의 브라우저 정보가 지정한 값과 일치하면 값 변경
		String visitor_browser = request.getHeader("User-Agent");
		
		//IE 버전 별 체크(IE11~Egde)
		if (visitor_browser.indexOf("Trident") > -1 || visitor_browser.indexOf("MSIE") > -1) {
			
			if (visitor_browser.indexOf("Trident/7") > -1) {
				visitor_browser = "IE 11";
			}
			else if (visitor_browser.indexOf("Trident/6") > -1) {
				visitor_browser = "IE 10";
			}
			else if (visitor_browser.indexOf("Trident/5") > -1) {
				visitor_browser = "IE 9";
			}
			else if (visitor_browser.indexOf("Trident/4") > -1) {
				visitor_browser = "IE 8";
			}
			else if (visitor_browser.indexOf("Edg") > -1) {
				visitor_browser = "IE Edge";
			}
		}
		//네이버 웨일
		else if (visitor_browser.indexOf("Whale") > -1) {
			visitor_browser = "Naver Whale " + visitor_browser.split("Whale/")[1].toString().split(" ")[0].toString();
		}
		//오페라
		else if (visitor_browser.indexOf("Opera") > -1 || visitor_browser.indexOf("OPR") > -1) {
			if (visitor_browser.indexOf("Opera") > -1) {
				visitor_browser = "OPERA " + visitor_browser.split("Opera/")[1].toString().split(" ")[0].toString();
			}
			else if (visitor_browser.indexOf("OPR") > -1) {
				visitor_browser = "OPERA " + visitor_browser.split("OPR/")[1].toString().split(" ")[0].toString();
			}
		}
		//파이어폭스
		else if (visitor_browser.indexOf("Firefox") > -1) {
			visitor_browser = "FireFox " + visitor_browser.split("Firefox/")[1].toString().split(" ")[0].toString();
		}
		//사파리
		else if (visitor_browser.indexOf("Safari") > -1 && visitor_browser.indexOf("Chrome") == -1) {
			visitor_browser = "Safari " + visitor_browser.split("Safari/")[1].toString().split(" ")[0].toString();
		}
		//크롬
		else if (visitor_browser.indexOf("Chrome") > -1) {
			visitor_browser = "Chrome " + visitor_browser.split("Chrome/")[1].toString().split(" ")[0].toString();
		}
		
	    //vo 객체를 생성하여 값을 setting
		VisitVO vo = new VisitVO();
		vo.setVisitor_ip(visitor_ip);
		vo.setVisitor_refer(request.getHeader("Referer"));
		vo.setVisitor_browser(visitor_browser);
		
		//VisitCounter Bean Id를 참조하여 생성(WebApplicationContext는 스프링에서 빈 관리가 되지 않음)
		VisitInsert visitor = (VisitInsert)wac.getBean("VisitCounter");
		try {
			visitor.visitorStatistics(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//세션이 만기될 때 실행
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {}
}