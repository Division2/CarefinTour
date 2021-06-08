package com.spring.ex.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.admin.service.AdminBannerService;
import com.spring.ex.service.MemberService;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.MileageVO;
import com.spring.ex.vo.OrderVO;

@Controller
public class MemberController {
	@Inject
	private MemberService service;
	@Inject AdminBannerService serviceBanner;

	//로그인
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
	public void postSignUp(MemberVO vo, MileageVO vo2, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		int result = service.SignUp(vo);
		
		System.out.println(vo2.getUserID());
		System.out.println(vo2.getType());
		System.out.println(vo2.getContent());
		System.out.println(vo2.getSaving());
		
		if (result == 1) {
			service.MemberSignUpSavingMileage(vo2);
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
  	
	//아이디 찾기 배너 출력
	@RequestMapping(value = "findID", method = RequestMethod.GET)
	public String findID(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(27));
		return "customer/findId";
	}
  	
	//아이디 찾기 
	@RequestMapping(value = "/FindUserID", method = RequestMethod.POST)
	public @ResponseBody String FindId(MemberVO vo) throws Exception {
		
		MemberVO findID = service.findID(vo);
		
		String msg = null;
		
		if (findID != null) {
			StringBuffer buffer = new StringBuffer(findID.getUserID());

			/*
			 * 아이디는 6~12자리로 제한하기 때문에 아이디 찾기 시
			 * 해당 회원의 아이디를 버퍼에 담아 뒤에서 3글자를 자른 후 *를 추가하여 리턴
			 * test1234 일 경우 test1***
			 */
			buffer.delete(3, buffer.length());
			for (int i = 0; i < findID.getUserID().length() - 3; i++) {
				buffer.append("*");
			}
			
			msg = buffer.toString();
		}
		return msg;
	}
	
	//비밀번호 찾기 배너 출력
	@RequestMapping(value = "findPassword", method = RequestMethod.GET)
	public String findPassword(Model model) throws Exception {
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(27));
		return "customer/findPassword";
	}
	
	//비밀번호 찾기 
	@RequestMapping(value ="/FindPassword", method = RequestMethod.POST)
	public @ResponseBody String FindPw(MemberVO vo) throws Exception {
		
		MemberVO findPassword = service.findPassword(vo);
		
		String msg = null;
		
		if (findPassword != null) {
			String tempPW = "";
			
			for (int i = 0; i < 12; i++) {
				tempPW += (char)((Math.random() * 26) + 97);
			}
			vo.setPassword(tempPW);
			service.UpdateTempPassword(vo);
			
			service.sendMail(vo, "findPassword");
			
			msg = "Success";
		}
		return msg;
	}
}