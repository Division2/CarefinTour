package com.spring.ex.service;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.MileageVO;
import com.spring.ex.vo.OrderVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	//전체 멤버 출력
	@Override
	public List<MemberVO> memberList() throws Exception {
		return null;
	}

	//회원 로그인
	@Override
	public MemberVO Login(MemberVO vo) throws Exception {
		return dao.Login(vo);
	}
	
	//회원 로그인 시 lastDate 갱신
	@Override
	public int LoginDateRenewal(MemberVO vo) throws Exception {
		return dao.LoginDateRenewal(vo);
	}

	//회원 로그아웃
	@Override
	public void logout(HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>location.href='main';</script>");
		out.close();
	}
	
	//회원가입
	@Override
	public int SignUp(MemberVO vo) throws Exception {
		return dao.SignUp(vo);
	}

	//회원가입 마일리지 적립
	@Override
	public int MemberSignUpSavingMileage(MileageVO vo) throws Exception {
		return dao.MemberSignUpSavingMileage(vo);
	}

	//회원가입 시 아이디 중복확인
	@Override
	public MemberVO IDCheck(MemberVO vo) throws Exception {
		return dao.IDCheck(vo);
	}
	
	//비회원 예약 확인
	@Override
	public OrderVO NonMemberView(OrderVO vo) throws Exception {
		return dao.NonMemberView(vo);
	}
	
	//아이디 찾기		
	@Override
	public MemberVO findID(MemberVO vo) throws Exception {
		return dao.findID(vo);
	}
		
	//비밀번호 찾기
	@Override
	public MemberVO findPassword(MemberVO vo) throws Exception {
		return dao.findPassword(vo);
	}
	
	//임시 비밀번호 발급
	@Override
	public int UpdateTempPassword(MemberVO vo) throws Exception {
		return dao.UpdateTempPassword(vo);
	}

	//이메일 발송
	@Override
	public void sendMail(MemberVO vo, String div) throws Exception {
		//Mail Server
		String charSet = "UTF-8";
		String hostSMTP = "smtp.gmail.com";
		String hostSMTPid = "zxcas12121@gmail.com";
		String hostSMTPpwd = "spdlxmdhs1@";
		
		//Send Host Setting
		String fromEmail = "carefintour@care.fin.tour";
		String fromName = "케어핀투어";
		String subject = "";
		String msg = "";
		
		//비밀번호 찾기
		if(div.equals("findPassword")) {
			subject = "케어핀투어 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>" + vo.getUserID() + "님의 임시 비밀번호 입니다.<br>비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : " + vo.getPassword() + "</p></div>";
		}
		
		String mail = vo.getEmail();
		try {
			HtmlEmail mailSetting = new HtmlEmail();
			mailSetting.setDebug(true);
			mailSetting.setCharset(charSet);
			mailSetting.setSSL(true);
			mailSetting.setHostName(hostSMTP);
			mailSetting.setSmtpPort(465);

			mailSetting.setAuthentication(hostSMTPid, hostSMTPpwd);
			mailSetting.setTLS(true);
			mailSetting.addTo(mail, charSet);
			mailSetting.setFrom(fromEmail, fromName, charSet);
			mailSetting.setSubject(subject);
			mailSetting.setHtmlMsg(msg);
			mailSetting.send();
		} catch (Exception e) {
			System.out.println("메일 발송 실패 : " + e);
		}
	}
}