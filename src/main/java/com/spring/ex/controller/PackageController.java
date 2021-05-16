package com.spring.ex.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.PackageService;
import com.spring.ex.vo.PackageVO;

@Controller
public class PackageController {
	
	private static final Logger logger = LoggerFactory.getLogger(PackageController.class);
	
	@Inject
	PackageService service;
	
	//패키지 입력
	@RequestMapping(value = "/insertpackage", method = {RequestMethod.GET, RequestMethod.POST})
	public void PackageWrite(PackageVO vo , MultipartHttpServletRequest mpRequest, HttpServletResponse response) throws Exception {
		
		int result = service.PackageWrite(vo,mpRequest);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			logger.info("Checked : " + vo.getPid());
			out.println("<script>location.href='package'</script>");
			out.close();
		}
	}
		
	
}
