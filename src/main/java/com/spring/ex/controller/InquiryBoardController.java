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

import com.spring.ex.service.InquiryBoardService;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class InquiryBoardController {

	@Inject
	InquiryBoardService service;
	
	//1:1 문의 작성
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.POST)
	public void Write(InquiryVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {

		//왜인지 파라미터로 받으면 잘 넘어오는데 vo로는 바로 들어가지 않는다..
		vo.setCatogory(request.getParameter("Category"));
		
		int result = service.InquiryWrite(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='inquiry'</script>");
			out.close();
		}
	}
	
	//1:1 문의 출력
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public String InquiryView(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.InquiryTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<InquiryVO> List = service.InquiryList(map);
		
		model.addAttribute("InquiryList", List);
		model.addAttribute("Paging", paging);
		
		return "customer/inquiry";
	}
}