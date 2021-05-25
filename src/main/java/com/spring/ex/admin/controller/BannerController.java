 package com.spring.ex.admin.controller;

 import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.BannerService;
import com.spring.ex.vo.BannerVO;

@Controller
public class BannerController {
	@Inject
	BannerService service;
	
	//여행패키지 출력
	@RequestMapping(value = "/admin/banner", method = RequestMethod.GET)
	public String  AdminPackageView(Model model ,HttpServletRequest request) throws Exception {
		List<BannerVO> bannerList = service.BannerView();
		System.out.println(bannerList);
		model.addAttribute("blist", bannerList);
		
		return "admin/site/banner";
		
	}
	
	
	
}