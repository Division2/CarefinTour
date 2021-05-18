package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.PackageService;
import com.spring.ex.vo.PackageVO;

@Controller
public class PackageController {
	
	
	@Inject
	PackageService service;
	
	//여행패키지 등록
	@RequestMapping(value = "/admin/PackageWrite", method = RequestMethod.POST)
	public void PackageWrite(PackageVO packageVo , MultipartHttpServletRequest mpRequest, HttpServletResponse response) throws Exception {
		
		int result = service.PackageWrite(packageVo,mpRequest);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='package'</script>");
			out.close();
		}
	}
	
	//여행패키지 출력
	@RequestMapping(value = "/package", method = RequestMethod.POST)
	public String  AdminPackageView(Model model, HttpServletRequest request) throws Exception {
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		List<PackageVO> packageList = service.AdminPackageView(map);
		
		model.addAttribute("topangler", packageList);
		
		return "site/packageproduct";
	}
	
}