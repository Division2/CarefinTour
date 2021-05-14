package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.service.FAQService;
import com.spring.ex.vo.FAQVO;

@Controller
public class FAQController {

	@Inject FAQService service;
	
	//자주 찾는 질문
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public String FAQAllView(@RequestParam(value="category", required=false) String category, Model model) throws Exception {
		
		List<FAQVO> faqAllList =  service.FAQAllView();
		List<FAQVO> faqOtherList =  service.FAQOtherView(category);
		
		model.addAttribute("faqAllList", faqAllList);
		model.addAttribute("faqOtherList", faqOtherList);
		
		return "customer/support";
	}
}