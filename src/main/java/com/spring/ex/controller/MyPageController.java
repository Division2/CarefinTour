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
import com.spring.ex.vo.MileageVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class MyPageController {
	@Inject MyPageService service;
	
	//마이페이지 예약 내역 출력
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String MyPageOrderList(HttpServletRequest request, Model model, MemberVO vo, HttpSession session) throws Exception {
		
		MemberVO sessioninfo = (MemberVO)session.getAttribute("member");
			
		int totalCount = service.OrderTotalCount(sessioninfo);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		if (sessioninfo != null) {
			map.put("UserID", sessioninfo.getUserID());
		}
		
		List<OrderVO> MyPageOrderList = service.MyPageOrderList(map);
		
		model.addAttribute("MyPageOrderList", MyPageOrderList);
		model.addAttribute("Paging", paging);
		
		return "mypage/booking";
	}
	
	//마이페이지 마일리지 내역 출력
	@RequestMapping(value = "/mileage", method = RequestMethod.GET)
	public String MyPageMileageList(HttpServletRequest request, HttpSession session, Model model) throws Exception {
		
		MemberVO sessioninfo = (MemberVO)session.getAttribute("member");
		
		int totalCount = service.MileageTotalCount(sessioninfo);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		if (sessioninfo != null) {
			map.put("UserID", sessioninfo.getUserID());
		}
		
		List<MileageVO> MyPageMileageList = service.MyPageMileageList(map);
		
		model.addAttribute("MyPageMileageList", MyPageMileageList);
		model.addAttribute("Paging", paging);
		
		return "mypage/mileage";
	}
	
	//마이페이지 회원 정보 수정
	@RequestMapping(value = "/MyPageInfoUpdate", method = RequestMethod.POST)
	public String MyPageInfoUpdate(MemberVO vo, HttpSession session) throws Exception {
		
		int result = service.MyPageInfoUpdate(vo);

		if (result != 0) {
			session.setAttribute("member", vo);
			session.setAttribute("auth", vo.getGrade());
		}
		
		return "mypage/info";
	}
	
	//마이페이지 1:1 문의 내역 출력
	@RequestMapping(value = "/inquirylist", method = RequestMethod.GET)
	public String MyPageInquiryList(HttpServletRequest request, Model model, MemberVO vo,HttpSession session) throws Exception {
		
		MemberVO sessioninfo = (MemberVO)session.getAttribute("member");		
		
		int totalCount = service.MyPageInquiryTotalCount(sessioninfo);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		if (sessioninfo != null) {
			map.put("UserID", sessioninfo.getUserID());
		}
		
		List<InquiryVO> List = service.MyPageInquiryList(map);
		
		model.addAttribute("MyPageInquiryList", List);
		model.addAttribute("Paging", paging);
		
		return "mypage/inquirylist";
	}
	
	//마이페이지 1:1 문의 내역 조회
	@RequestMapping(value = "/inquirydetails", method = {RequestMethod.GET})
	public String MyPageInquiryRead(InquiryVO vo, Model model) throws Exception {
		
		model.addAttribute("MyPageInquiryQuestion", service.MyPageInquiryQuestion(vo.getiId()));
		model.addAttribute("MyPageInquiryAnswer", service.MyPageInquiryAnswer(vo.getiId()));
		
		return "mypage/inquirydetails";
	}
	
	//마이페이지 회원 탈퇴
	@RequestMapping(value = "/withdrawal", method = RequestMethod.POST)
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
	
	//마이페이지 회원 탈퇴 패스워드 확인
	@RequestMapping(value = "/MyPagePassChk", method = RequestMethod.POST)
	public @ResponseBody int MyPagePassChk(MemberVO vo) throws Exception {
		
		return service.MyPagePassChk(vo);
	}
}