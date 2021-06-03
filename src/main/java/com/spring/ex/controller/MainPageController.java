package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.MainPageService;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.OrderVO;

@Controller
public class MainPageController {

	@Inject MainPageService service;
	
	//메인 하단 여행포토 리뷰
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String NewTravelPhotoList(Model model) throws Exception {
		
		//메인 최신 포토리뷰 3개 출력
		model.addAttribute("NewTravelPhotoList", service.NewTravelPhotoList());
		
		//메인 추천usa쪽패키지 상품출력
		model.addAttribute("UsaPackageViewList", service.UsaPackageViewList());
		
		//메인 추천중국쪽패키지 상품출력
		model.addAttribute("ChinaPackageViewList", service.ChinaPackageViewList());
		
		//메인 추천동남아패키지 상품출력
		model.addAttribute("MylPackageViewList", service.MylPackageViewList());
		
		//메인 추천일본패키지 상품출력
		model.addAttribute("JapanPackageViewList", service.JapanPackageViewList());
		
		//메인 추천서핑패키지 상품출력
		model.addAttribute("SurfingPackageViewList", service.SurfingPackageViewList());
		
		//메인 추천유럽패키지 상품출력
		model.addAttribute("EuPackageViewList", service.EuPackageViewList());
		
		//메인 최신리뷰 8개
		model.addAttribute("LineReview", service.LineReview());
		
		return "index";
	}
	
	
}