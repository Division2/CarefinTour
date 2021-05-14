package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.HotelService;
import com.spring.ex.vo.HotelVO;
import com.spring.ex.vo.PagingVO;


@Controller
public class HotelController {
	@Inject HotelService service;
	
	// 호텔예약
	@RequestMapping(value = "/hotelres", method = RequestMethod.POST)
	public void hotelres(HotelVO hotelVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int result = 0;
		HttpSession session = request.getSession();
		
		result = service.hotelres(hotelVO);
		
		if (result == 1) {
			session.setAttribute("hotel", hotelVO);
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='main';</script>");
			out.close();
		}
	}
	//마이페이지 1:1 문의 출력
	@RequestMapping(value = "/hotelList", method = RequestMethod.GET)
	public String hotelList(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.HotelTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<HotelVO> List = service.hotelList(map);
		
		model.addAttribute("hotelList", List);
		model.addAttribute("Paging", paging);
		
		return "member/mypage";
	}

}
