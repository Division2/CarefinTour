 package com.spring.ex.admin.controller;

 import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.admin.service.BannerService;
import com.spring.ex.util.UploadFileUtils;
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
	public String BannerModifyView( Model model, HttpServletRequest request) throws Exception {
		int bid = Integer.parseInt(request.getParameter("Bid"));
		BannerVO bannerModifyBid = service.BannerModifyView(bid);
		model.addAttribute("bmodify",bannerModifyBid);
		
		return "admin/site/bannerModify";
	}
	
	//관리자 배너 파일수정
	@RequestMapping(value = "/admin/bannerModify", method = RequestMethod.POST)
	public String BannerModify(BannerVO vo, MultipartFile file, HttpServletRequest request) throws Exception {
		String Path = request.getSession().getServletContext().getRealPath("resources/images/banner_main/");
		
		System.out.println("dd "+ file.getOriginalFilename());
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			new File(Path + request.getParameter("imgFile")).delete();
			String fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
			System.out.println(fileName);
	  
			vo.setS_file_name(fileName);
		}
		else {
			vo.setS_file_name(request.getParameter("imgFile"));
		}
		
		service.BannerModify(vo);
		
		return "redirect:banner";
	}
}