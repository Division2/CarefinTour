package com.spring.ex.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminBannerService;
import com.spring.ex.admin.service.AdminTravelInfoService;

@Controller
public class TravelInfoController {

	@Inject AdminTravelInfoService service;
	@Inject AdminBannerService serviceBanner;
	
	@RequestMapping(value = "/visainfo", method = RequestMethod.GET)
	public String visainfo(Model model) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(15));
		
		model.addAttribute("VisaInfo", service.visaInfoView());
		
		return "travelinfo/visainfo";
	}
	
	@RequestMapping(value = "/supplies", method = RequestMethod.GET)
	public String suppliesinfo(Model model) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(16));
		
		model.addAttribute("SuppliesInfo", service.suppliesInfoView());
		
		return "travelinfo/supplies";
	}
	
	//환율정보
	@RequestMapping(value = "/exchangeinfo", method = RequestMethod.GET)
	public String exchangeinfo(Model model) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(13));
		
		return "travelinfo/exchangeinfo";
	}
	
	//시차
	@RequestMapping(value = "/timedifferenceinfo", method = RequestMethod.GET)
	public String timedifferenceinfo(Model model) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(14));
		
		return "travelinfo/timedifferenceinfo";
	}
	
	//날씨
	@RequestMapping(value = "/weatherinfo", method = RequestMethod.GET)
	public String weatherinfo(Model model) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(12));
		
		return "travelinfo/weatherinfo";
	}
}