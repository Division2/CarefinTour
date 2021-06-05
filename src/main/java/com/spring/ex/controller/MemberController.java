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
import com.spring.ex.vo.OrderVO;

@Controller
public class MemberController {
	@Inject
	private MemberService service;
	
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public @ResponseBody int Login(MemberVO vo, HttpServletRequest request) throws Exception {
		
		int result = 0;
		HttpSession session = request.getSession();
		
		System.out.println("로그인 웹 요청 ID : " + request.getParameter("UserID"));
		System.out.println("로그인 웹 요청 PW : " + request.getParameter("Password"));
		System.out.println("로그인 요청 시각 : " + request.getParameter("lastDate"));
		
		MemberVO member = service.Login(vo);
		
		if (member != null) {
			//로그인 시 lastDate 갱신
			service.LoginDateRenewal(vo);
			
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
	
	//회원가입
	@RequestMapping(value = "/SignUp", method = RequestMethod.POST)
	public void postSignUp(MemberVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		int result = service.SignUp(vo);
		
		if (result == 1) {
			session.setAttribute("member", vo);
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='main';</script>");
			out.close();
		}
	}
	
	//회원가입 아이디 중복확인
	@RequestMapping(value = "/IDCheck", method = RequestMethod.POST)
	public @ResponseBody int IDCheck(MemberVO vo) throws Exception {
		
		int result = 0;
		
		MemberVO IDCheck = service.IDCheck(vo);
		System.out.println(IDCheck);
		if (IDCheck == null) {
			result = 1;
		}
		
		return result;
	}
	
  	//비회원 예약 패키지 출력
  	@RequestMapping(value = "/NonMemberView", method = RequestMethod.POST)
  	public @ResponseBody OrderVO NonMemberView(OrderVO vo) throws Exception {
  		
  		OrderVO nonmember = service.NonMemberView(vo);
  		
  		return nonmember;
  	}
				
	// 아이디 찾기 
	@RequestMapping(value = "/FindUserID", method = RequestMethod.POST)
	@ResponseBody
	public String FindId(MemberVO vo,HttpServletRequest req,RedirectAttributes rttr) throws Exception {
		MemberVO login = service.UserID(vo);
		System.out.println(login);
		String msg = "";
		if (login == null) {
			msg = "error";
		} else {
			msg = login.getUserID();
		}
		return msg;
	}
		
	 // 비밀번호 찾기 
	@RequestMapping(value ="/FindPassword", method = RequestMethod.POST)
	@ResponseBody
	public String FindPw(MemberVO vo,HttpServletRequest req,RedirectAttributes rttr) throws Exception {
		MemberVO login = service.Password(vo);
		String msg = "";
		if (login == null) {
			msg = "error";
		} else {
			msg = login.getPassword();
		}
		System.out.println(login);
		return msg;
	}
}