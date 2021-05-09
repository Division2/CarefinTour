package com.spring.ex.controller;


import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.NoticeBoardService;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class NoticeBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(TravelPhotoController.class);
	
	@Inject
	NoticeBoardService service;
	
	//공지사항 작성
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.POST)
	public void Write(NoticeBoardVO vo, HttpServletResponse response) throws Exception {
		int result = 0;
		
		result = service.NoticeWrite(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='notice'</script>");
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
	
	//공지사항 게시글 내용
	@RequestMapping(value = "/noticeView", method = RequestMethod.GET)
	public String NoticeBoardView(NoticeBoardVO vo, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int nId = Integer.parseInt(request.getParameter("nId"));
		
		NoticeBoardVO content = service.NoticeBoardView(nId);
		
		if (content == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('존재하지 않는 게시글입니다!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		model.addAttribute("content", content);
		
		return "customer/noticeView";
	}
	
	//공지사항 수정
	@RequestMapping(value = "/noticeModify", method = RequestMethod.POST)
	public void Modify(NoticeBoardVO vo, HttpServletResponse response) throws Exception {
		int result = 0;
		
		result = service.NoticeModify(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='notice'</script>");
			out.close();
		}
	}
	
	//공지사항 수정 내용
	@RequestMapping(value = "/noticeModifyView", method = RequestMethod.GET)
	public String ModifyView(NoticeBoardVO vo, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int nId = Integer.parseInt(request.getParameter("nId"));
		
		NoticeBoardVO content = service.NoticeBoardView(nId);
		
		if (content == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('존재하지 않는 게시글입니다!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		model.addAttribute("content", content);
		
		return "customer/noticeModify";
	}
	
	//공지사항 삭제
	@RequestMapping(value = "/noticeDelete")
	public void NoticeDelete(HttpServletRequest request) throws Exception {
		int result = 0;
		
		int nId = Integer.parseInt(request.getParameter("nId"));
		
		result = service.NoticeDelete(nId);
		
		logger.info("nId : " + nId);
		logger.info("게시물 삭제 : " + result);
		System.out.println(result);
	}
}