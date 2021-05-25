package com.spring.ex.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminDashBoardService;

@Controller
public class AdminDashBoardController {
	
	@Inject AdminDashBoardService service;
	
	@RequestMapping(value = "/admin/main", method = RequestMethod.GET)
	public String AdminDashBoard(Model model) throws Exception {
		
		int totalBoardCount = service.TodayNoticeTotalCount() + service.TodayInquiryTotalCount() + service.TodayTravelPhotoTotalCount();

		model.addAttribute("TodayVisitorTotalCount", service.TodayVisitorTotalCount());
		model.addAttribute("TodayBoardTotalCount", totalBoardCount);
		model.addAttribute("TodayRegisterMemberTotalCount", service.TodayRegisterMemberTotalCount());
		
		return "admin/index";
	}
}