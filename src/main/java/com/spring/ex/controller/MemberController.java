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

import com.spring.ex.dto.MemberDTO;
import com.spring.ex.service.MemberService;

@Controller
public class MemberController {
	@Inject
	private MemberService service;
	
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public @ResponseBody int Login(MemberDTO dto, HttpServletRequest request) throws Exception {
		
		int result = 0;
		HttpSession session = request.getSession();
		
		System.out.println("로그인 웹 요청 ID : " + request.getParameter("UserID"));
		System.out.println("로그인 웹 요청 PW : " + request.getParameter("Password"));
		System.out.println("로그인 요청 시각 : " + request.getParameter("lastDate"));
		
		MemberDTO member = service.Login(dto);
		
		if (member != null) {
			//로그인 시 lastDate 갱신
			service.LoginDateRenewal(dto);
			
			session.setAttribute("member", member);
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
	public void postSignUp(MemberDTO dto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
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
	public @ResponseBody int IDCheck(MemberDTO dto) throws Exception {
		
		int result = 0;
		
		MemberDTO IDCheck = service.IDCheck(dto);
		System.out.println(IDCheck);
		if (IDCheck == null) {
			result = 1;
		}
		
		return result;
	}
	//회원 정보수정
	@RequestMapping(value = "/MemberInfoUpdate", method = RequestMethod.POST)
	public String MemberInfoUpdate(MemberDTO dto, HttpSession session) throws Exception {
		service.MemberInfoUpdate(dto);
		session.invalidate();
		
		return "member/info";
	}
	
	// 회원 탈퇴 
	@RequestMapping(value= "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberDTO dto, HttpSession session, RedirectAttributes rttr) throws Exception{
				
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		// 세션에있는 비밀번호
		String sessionPass = member.getPassword();
		// dto로 들어오는 비밀번호
		String voPass = dto.getPassword();
				
		if(!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
						return "member/withdrawl";
					}
					service.memberDelete(dto);
					session.invalidate();
					return "member/main";
		}

}