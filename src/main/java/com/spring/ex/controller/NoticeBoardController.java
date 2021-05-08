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

import com.spring.ex.service.NoticeBoardService;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class NoticeBoardController {

	@Inject
	NoticeBoardService service;
	
	//공지사항 작성
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.POST)
	public void Write(NoticeBoardVO vo, HttpServletResponse response) throws Exception{
		int result = 0;
		
		result = service.Write(vo);
		
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		System.out.println(vo.getImportant());
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println(""
					+ "<script>"
					+ "alert('성공');"
					+ "location.href='/ex/notice'"
					+ "</script>");
			
			out.close();
		}
	}
	
	//공지사항 출력
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String NoticeView(HttpServletRequest request, Model model) throws Exception {

		int totalCount = service.NoticeTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<NoticeBoardVO> List = service.NoticeList(map);
		
		model.addAttribute("NoticeList", List);
		model.addAttribute("Paging", paging);
		
		return "customer/notice";
	}
}