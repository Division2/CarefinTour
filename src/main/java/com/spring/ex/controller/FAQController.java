package com.spring.ex.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.admin.service.AdminBannerService;
import com.spring.ex.service.FAQService;
import com.spring.ex.vo.FAQVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class FAQController {

	@Inject FAQService service;
	
	//자주 찾는 질문
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public String FAQAllView(@RequestParam(value="category", required=false) String category, HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.FAQTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<FAQVO> faqAllList = service.FAQAllView(map);
		List<Map<String, Object>> Category = service.FAQCategory();
		
		model.addAttribute("faqAllList", faqAllList);
		model.addAttribute("Paging", paging);
		model.addAttribute("Category", Category);
		
		return "customer/support";
	}
	
	//자주 찾는 질문(카테고리별)
	@RequestMapping(value = "/supportOther", method = RequestMethod.GET)
	public String FAQOtherView(@RequestParam(value="category", required=false) String category, HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.FAQOtherTotalCount(category);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("category", category);
		
		List<FAQVO> faqOtherList =  service.FAQOtherView(map);
		List<Map<String, Object>> Category = service.FAQCategory();
		
		model.addAttribute("faqOtherList", faqOtherList);
		model.addAttribute("Paging", paging);
		model.addAttribute("Category", Category);
		
		return "customer/support";
	}
}