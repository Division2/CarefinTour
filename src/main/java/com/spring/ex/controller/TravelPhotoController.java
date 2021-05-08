package com.spring.ex.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.TravelPhotoService;
import com.spring.ex.vo.TravelPhotoVO;

@Controller
public class TravelPhotoController {
	
		@Inject
		TravelPhotoService service;
		
		//게시물 작성
		@RequestMapping(value = "/gaza", method = RequestMethod.POST)
		public String postWrite(TravelPhotoVO travelPhotoVO) throws Exception{
			service.addphoto(travelPhotoVO);
			System.out.println(travelPhotoVO.getTitle());
			return "index";
		}
	
}