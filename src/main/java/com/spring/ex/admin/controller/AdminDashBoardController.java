package com.spring.ex.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminDashBoardService;
import com.spring.ex.vo.MemberVO;

@Controller 
public class AdminDashBoardController {
	
	@Inject AdminDashBoardService service;
	
	//관리자 페이지 메인 대시보드
	@RequestMapping(value = "/admin/main", method = RequestMethod.GET)
	public String AdminDashBoard(HttpSession session, Model model) throws Exception {
		
		MemberVO member_session = (MemberVO)session.getAttribute("member");
		String AdminID = null;
		if (member_session != null) {
			AdminID = member_session.getUserID();
		}
		
		int totalBoardCount = service.TodayNoticeTotalCount() + service.TodayInquiryTotalCount() + service.TodayTravelPhotoTotalCount();
		
		model.addAttribute("TodayVisitorTotalCount", service.TodayVisitorTotalCount());
		model.addAttribute("TodayBoardTotalCount", totalBoardCount);
		model.addAttribute("TodayRegisterMemberTotalCount", service.TodayRegisterMemberTotalCount());
		model.addAttribute("TodayRevenueTotalCount", service.TodayRevenueTotaclCount());
		model.addAttribute("RevenueByPeriod", service.RevenueByPeriod());
		model.addAttribute("ManRatio", service.ManRatio());
		model.addAttribute("WomanRatio", service.WomanRatio());
		model.addAttribute("AdminProfile", service.AdminProfile(AdminID));
		
		return "admin/index";
	}

	//관리자 정보 수정
	@RequestMapping(value = "/admin/AdminProfileEdit", method = RequestMethod.POST)
	public String AdminProfileEdit(MemberVO vo, HttpSession session) throws Exception {
		
		int result = service.AdminProfileEdit(vo);
		
		if (result != 0) {
			session.setAttribute("member", vo);
			session.setAttribute("auth", vo.getGrade());
		}
		
		return "redirect:main";
	}
	
	//관리자 로그아웃
	@RequestMapping(value = "/admin/logout", method = RequestMethod.GET)
	public String AdminLogout(HttpSession session) throws Exception {
		
		session.invalidate();
		
		return "redirect:/main";
	}
		
}