 package com.spring.ex.admin.controller;

 import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.BannerService;
import com.spring.ex.vo.BannerVO;

@Controller
public class BannerController {
	@Inject
	BannerService service;
	
	//관리자화면 배너 출력
	@RequestMapping(value = "/admin/banner", method = RequestMethod.GET)
	public String  AdminPackageView(Model model ,HttpServletRequest request) throws Exception {
		List<BannerVO> bannerList = service.BannerView();
		System.out.println(bannerList);
		model.addAttribute("blist", bannerList);
		
		return "admin/site/banner";
		
	}
	
	//관리자 배너 수정페이지 출력
	@RequestMapping(value = "/admin/bannerModifyView", method = RequestMethod.GET)
	public String BannerModifyView( Model model) throws Exception {
		
		//List<Map<String, Object>> fileList = service.TravelPhotoSelectFileList(travelPhotoVO.getPrid());
		
		//model.addAttribute("update", service.TravelPhotoView(travelPhotoVO.getPrid()));
		//model.addAttribute("file", fileList);
		
		return "admin/site/bannerModify";
	}
	
}