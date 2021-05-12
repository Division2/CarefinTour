package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.InquiryBoardService;
import com.spring.ex.vo.InquiryVO;

@Controller
public class InquiryBoardController {

	@Inject
	InquiryBoardService service;
	
	//1:1 문의 작성
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.POST)
	public void Write(InquiryVO vo, HttpServletResponse response) throws Exception {
		int result = 0;
		
	//	result = service.NoticeWrite(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='notice'</script>");
			out.close();
		}
	}
	
	//1:1 문의 출력
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public String InquiryView(Model model) throws Exception {
		
		List<InquiryVO> List = service.InquiryList();
		
		model.addAttribute("InquiryList", List);
		
		return "customer/inquiry";
	}
}