package com.spring.ex.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.service.MemberService;
import com.spring.ex.vo.MemberVO;

@Controller
public class MemberController {
	@Inject
	private MemberService service;
	
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public @ResponseBody int Login(MemberVO dto, HttpServletRequest request) throws Exception {
		
		int result = 0;
		HttpSession session = request.getSession();
		
		System.out.println("로그인 웹 요청 ID : " + request.getParameter("UserID"));
		System.out.println("로그인 웹 요청 PW : " + request.getParameter("Password"));
		System.out.println("로그인 요청 시각 : " + request.getParameter("lastDate"));
		
		MemberVO member = service.Login(dto);
		
		if (member != null) {
			//로그인 시 lastDate 갱신
			service.LoginDateRenewal(dto);
			
			session.setAttribute("member", member);
			session.setAttribute("auth", member.getGrade());
			result = 1;
		}
		return result;
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout(HttpSession session, HttpServletResponse response) throws Exception {
		session.invalidate();
		service.logout(response);
	}
	
	// 회원가입
	@RequestMapping(value = "/SignUp", method = RequestMethod.POST)
	public void postSignUp(MemberVO dto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int result = 0;
		HttpSession session = request.getSession();
		
		System.out.println(dto.getGrade());
		System.out.println(dto.getMileage());
		
		System.out.println("ajax 회원가입 요청");
		result = service.SignUp(dto);
		
		if (result == 1) {
			session.setAttribute("member", dto);
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='main';</script>");
			out.close();
		}
	}
	
	//회원가입 아이디 중복확인
	@RequestMapping(value = "/IDCheck", method = RequestMethod.POST)
	public @ResponseBody int IDCheck(MemberVO dto) throws Exception {
		
		int result = 0;
		
		MemberVO IDCheck = service.IDCheck(dto);
		System.out.println(IDCheck);
		if (IDCheck == null) {
			result = 1;
		}
		
		return result;
	}
	//회원 정보수정
	@RequestMapping(value = "/MemberInfoUpdate", method = RequestMethod.POST)
	public String MemberInfoUpdate(MemberVO dto, HttpSession session) throws Exception {
		service.MemberInfoUpdate(dto);
		session.invalidate();
		
		 return "redirect:/main";
	}
	
	// 회원 탈퇴 
	@RequestMapping(value= "/memberDelete", method = RequestMethod.POST)
	public void memberDelete(MemberVO dto, HttpSession session, RedirectAttributes rttr, HttpServletResponse response) throws Exception {
		
		MemberVO sessionInfo = (MemberVO)session.getAttribute("member");
		
		System.out.println("DTO : " + dto.getPassword());
		System.out.println("Session : " + sessionInfo.getPassword());
		
		if (dto.getPassword().equals(sessionInfo.getPassword())) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			service.memberDelete(dto);
			session.invalidate();
			
			out.println("<script>location.href='main';</script>");
			out.close();
		}
	}
	
	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value="/passChk", method = RequestMethod.POST)
	public int passChk(MemberVO dto) throws Exception {
		int result = service.passChk(dto);
		return result;
		
		
	}
}