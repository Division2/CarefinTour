package com.spring.ex.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminStatisticsService;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.VisitVO;

@Controller
public class AdminStatisticsController {
	
	@Inject private AdminStatisticsService service;
	
	//방문자 전체 출력
	@RequestMapping(value = "/admin/visit", method = RequestMethod.GET)
	public String visitView(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.visitorTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(15);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 15;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<VisitVO> List = service.visitorAllView(map);
		
		model.addAttribute("VisitList", List);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/visitstatistics";
	}
	
	//방문자 검색 출력
	@RequestMapping(value = "/admin/visitSearch", method = RequestMethod.GET)
	public String visitSearchView(HttpServletRequest request, Model model) throws Exception {
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		HashMap<String, String> totalMap = new HashMap<String, String>();
		totalMap.put("start_date", start_date);
		totalMap.put("end_date", end_date);
		
		int totalCount = service.visitorSearchTotalCount(totalMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(15);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 15;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		
		List<VisitVO> List = service.visitorSearchView(map);
		
		model.addAttribute("VisitList", List);
		model.addAttribute("Paging", paging);
		model.addAttribute("start_date", start_date);
		model.addAttribute("end_date", end_date);
		
		return "admin/statistics/visitstatistics";
	}
}