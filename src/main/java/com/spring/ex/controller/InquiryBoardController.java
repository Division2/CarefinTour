package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.InquiryBoardService;
import com.spring.ex.vo.InquiryVO;

@Controller
public class InquiryBoardController {

	@Inject
	InquiryBoardService service;
	
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public String InquiryView(Model model) throws Exception {
		
		List<InquiryVO> List = service.InquiryList();
		
		model.addAttribute("InquiryList", List);
		
		return "customer/inquiry";
	}
}