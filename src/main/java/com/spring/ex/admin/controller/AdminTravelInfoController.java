package com.spring.ex.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminTravelInfoService;
import com.spring.ex.vo.SuppliesInfoVO;
import com.spring.ex.vo.VisaInfoVO;

@Controller
public class AdminTravelInfoController {

	@Inject AdminTravelInfoService service;
	
	//비자 정보 등록
	@RequestMapping(value = "/admin/visaInfoWrite", method = RequestMethod.POST)
	public String visaInfoWrite(VisaInfoVO vo) throws Exception {
		
		service.visaInfoWrite(vo);
		
		return "redirect:info";
	}
	
	//여행준비물 등록
	@RequestMapping(value = "/admin/travelSuppliesWrite", method = RequestMethod.POST)
	public String travelSuppliesInfoWrite(SuppliesInfoVO vo) throws Exception {
		
		service.suppliesInfoWrite(vo);
		
		return "redirect:info";
	}
	
	//여행 정보 조회(비자 정보, 여행준비물)
	@RequestMapping(value = "/admin/info", method = RequestMethod.GET)
	public String visaInfoView(Model model) throws Exception {
		
		model.addAttribute("VisaInfo", service.visaInfoView());
		model.addAttribute("SuppliesInfo", service.suppliesInfoView());
		
		return "admin/site/travelinfo";
	}
}