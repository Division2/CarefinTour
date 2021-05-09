package com.spring.ex.controller;


import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.TravelPhotoService;
import com.spring.ex.vo.TravelPhotoVO;

@Controller

public class TravelPhotoController {
	
		private static final Logger logger = LoggerFactory.getLogger(TravelPhotoController.class);
	
		@Inject
		TravelPhotoService service;
		
		//게시물 작성
		@RequestMapping(value = "/gaza", method = RequestMethod.POST)
		public String postWrite(TravelPhotoVO travelPhotoVO , MultipartHttpServletRequest mpRequest) throws Exception{
			service.addphoto(travelPhotoVO, mpRequest);
			
			return "index";
		}
		//게시물 목록
		@RequestMapping(value = "/list.do", method = RequestMethod.GET)
		public String list(Model model) throws Exception{
		
			System.out.println("service : " + service.list());
			logger.info("list");
			model.addAttribute("list", service.list());
			
			return "ranking/travelphoto";
		}
		//게시물 조회
		@RequestMapping(value = "/readView", method = RequestMethod.GET)
		public String read(TravelPhotoVO travelPhotoVO, Model model) throws Exception{
			logger.info("read");
			
			model.addAttribute("read", service.read(travelPhotoVO.getPrid()));
			
			
			return "/board/readView";
		}
	
}