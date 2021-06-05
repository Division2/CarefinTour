package com.spring.ex.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminBannerService;

@Controller
public class HotelController {
	@Inject
	AdminBannerService serviceBanner;
	
	//국내호텔 배너 출력
	@RequestMapping(value = "/hotelreservation", method = RequestMethod.GET)
	public String BannerHotelreservation(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(11));
		
		return "hotel/hotelreservation";
	}
	
	//호텔 상세페이지 배너 출력
	@RequestMapping(value = "/hoteldetail", method = RequestMethod.GET)
	public String BannerHoteldetail(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(21));
		
		return "hotel/hoteldetail";
	}
}