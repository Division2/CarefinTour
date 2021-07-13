package com.spring.ex.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminBannerService;

@Controller
public class InformationController {
	@Inject
	AdminBannerService serviceBanner;
	
	//회사개요 배너출력
	@RequestMapping(value = "/company", method = RequestMethod.GET)
	public String company(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(23));
		
		return "information/companyoverview";
	}
	
	// 여행약관 국내 해외 배너 출력
	@RequestMapping(value = "/domestictttac", method = RequestMethod.GET)
	public String domestictttac(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(24));
		
		return "information/domestictravel";
	}
	@RequestMapping(value = "/overseattac", method = RequestMethod.GET)
	public String overseattac(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(24));
		return "information/overseastravel";
	}
	
	//여행자 보험 배너 출력
	@RequestMapping(value = "/insurance", method = RequestMethod.GET)
	public String insurance(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(25));
		
		return "information/insurance";
	}
}