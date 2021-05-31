package com.spring.ex.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.MainPageService;

@Controller
public class MainPageController {

	@Inject MainPageService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String NewTravelPhotoList(Model model) throws Exception {
		
		model.addAttribute("NewTravelPhotoList", service.NewTravelPhotoList());
		
		return "index";
	}
	
	
}