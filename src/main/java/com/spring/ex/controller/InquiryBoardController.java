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
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.service.InquiryBoardService;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class InquiryBoardController {

	@Inject
	InquiryBoardService service;
	
	//1:1 문의 작성
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.POST)
	public void Write(InquiryVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {

		vo.setCategory(request.getParameter("Category"));
		vo.setUserId(request.getParameter("UserID"));
		
		int result = service.InquiryWrite(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='inquiry'</script>");
			out.close();
		}
	}
	
	//1:1 문의 답변 작성
	@RequestMapping(value = "/inquiryAnswerWrite", method = RequestMethod.POST)
	public @ResponseBody int AnswerWrite(InquiryAnswerVO vo) throws Exception {
		
		int result = service.InquiryAnswerWrite(vo);
		service.InquiryStatusUpdate(vo.getiId());
		
		return result;
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
	
	
	//1:1 문의 검색
	@RequestMapping(value = "/inquirySearch", method = RequestMethod.GET)
	public String NoticeSearchView(InquiryVO vo, HttpServletRequest request, Model model) throws Exception {
		
		String title = request.getParameter("title");
		int totalCount = service.InquirySearchTotalCount(title);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("title", title);
		
		List<InquiryVO> List = service.InquirySearchList(map);
		
		model.addAttribute("InquiryList", List);
		model.addAttribute("Paging", paging);
		model.addAttribute("Title", title);
		
		return "customer/inquiry";
	}
	
	//1:1 문의 게시글, 답변 문의 게시글 내용
	@RequestMapping(value = "/inquiryView", method = RequestMethod.GET)
	public String InquiryBoardView(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int iId = Integer.parseInt(request.getParameter("iId"));
		
		InquiryVO content = service.InquiryBoardView(iId);
		InquiryAnswerVO answerContent = service.InquiryAnswerBoardView(iId);
		
		if (content == null && answerContent == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('존재하지 않는 게시글입니다!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		model.addAttribute("content", content);
		model.addAttribute("answerContent", answerContent);
		
		return "customer/inquiryView";
	}
	
	//1:1 문의 답변 수정
	@RequestMapping(value = "/inquiryModify", method = RequestMethod.POST)
	public void AnswerModify(InquiryAnswerVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int result = service.InquiryAnswerModify(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='inquiryView?iId=" + vo.getiId() + "'</script>");
			out.close();
		}
	}
	
	//1:1 문의 답변 삭제
	@RequestMapping(value = "/inquiryDelete", method = RequestMethod.GET)
	public void AnswerDelete(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		int iId = Integer.parseInt(request.getParameter("iId"));
		
		if (session.getAttribute("auth").equals("Admin")) {
			int result = service.InquiryAnswerDelete(iId);
			service.InquiryStatusUpdate2(iId);
			
			System.out.println("답변 삭제" + result);
		}
	}
}