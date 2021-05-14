package com.spring.ex.service;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.vo.MemberVO;

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
	public MemberVO Login(MemberVO dto) throws Exception {
		return dao.Login(dto);
	}
	
	//회원 로그인 시 lastDate 갱신
	@Override
	public int LoginDateRenewal(MemberVO dto) throws Exception {
		return dao.LoginDateRenewal(dto);
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
	public int SignUp(MemberVO dto) throws Exception {
		return dao.SignUp(dto);
	}

	//회원가입 시 아이디 중복확인
	@Override
	public MemberVO IDCheck(MemberVO dto) throws Exception {
		return dao.IDCheck(dto);
	}

	//정보 수정
	@Override
	public void MemberInfoUpdate(MemberVO dto) throws Exception {	
		dao.MemberInfoUpdate(dto);
	}
	
	//회원탈퇴
	@Override
	public void memberDelete(MemberVO dto) throws Exception {
		dao.memberDelete(dto);
	}
	
	// 패스워드 체크
	@Override
	public int passChk(MemberVO dto) throws Exception {
		int result = dao.passChk(dto);
		return result;
	}
}