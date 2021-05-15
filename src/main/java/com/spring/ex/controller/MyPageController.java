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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.service.MyPageService;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PagingVO;


@Controller
public class MyPageController {
	@Inject MyPageService service;
	
	//마이 페이지 회원 정보수정
	@RequestMapping(value = "/MyPageInfoUpdate", method = RequestMethod.POST)
	public String MyPageInfoUpdate(MemberVO vo, HttpSession session) throws Exception {
		service.MyPageInfoUpdate(vo);
		session.invalidate();
		
		 return "redirect:/main";
	}
	
	// 회원 탈퇴 
	@RequestMapping(value= "/MyPageDelete", method = RequestMethod.POST)
	public void MyPageDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr, HttpServletResponse response) throws Exception {
		
		MemberVO sessionInfo = (MemberVO)session.getAttribute("member");
		
		System.out.println("DTO : " + vo.getPassword());
		System.out.println("Session : " + sessionInfo.getPassword());
		
		if (vo.getPassword().equals(sessionInfo.getPassword())) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			service.MyPageDelete(vo);
			session.invalidate();
			
			out.println("<script>location.href='main';</script>");
			out.close();
		}
	}
	
	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value="/MyPagePassChk", method = RequestMethod.POST)
	public int MyPagePassChk(MemberVO vo) throws Exception {
		int result = service.MyPagePassChk(vo);
		return result;		
	}
	
	//마이페이지 1:1 문의 구매 내역 출력
	@RequestMapping(value = "/MyPageOrderList", method = RequestMethod.GET)
	public String MyPageOrderList(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.OrderTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<OrderVO> List = service.MyPageOrderList(map);
		
		model.addAttribute("MyPageOrderList", List);
		model.addAttribute("Paging", paging);
		
		return "mypage/mypage";
	}
	
	//마이페이지 1:1 문의 출력
	@RequestMapping(value = "/MyPageInquiryList", method = RequestMethod.GET)
	public String MyPageInquiryList(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.MyPageInquiryTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<InquiryVO> List = service.MyPageInquiryList(map);
		
		model.addAttribute("MyPageInquiryList", List);
		model.addAttribute("Paging", paging);
		
		return "mypage/inquirylist";
	}

}
