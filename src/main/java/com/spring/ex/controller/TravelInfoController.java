package com.spring.ex.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminTravelInfoService;

@Controller
public class TravelInfoController {

	@Inject AdminTravelInfoService service;
	
	@RequestMapping(value = "/visainfo", method = RequestMethod.GET)
	public String visainfo(Model model) throws Exception {
		
		model.addAttribute("VisaInfo", service.visaInfoView());
		
		return "travelinfo/visainfo";
	}
	
	@RequestMapping(value = "/supplies", method = RequestMethod.GET)
	public String suppliesinfo(Model model) throws Exception {
		
		model.addAttribute("SuppliesInfo", service.suppliesInfoView());
		
		return "travelinfo/supplies";
	}
}