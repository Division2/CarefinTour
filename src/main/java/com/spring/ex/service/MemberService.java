package com.spring.ex.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.spring.ex.dto.MemberDTO;


@Service
public interface MemberService {
	//전체 멤버 출력
	public List<MemberDTO> memberList() throws Exception;
	
	//회원 로그인
	public MemberDTO Login(MemberDTO dto) throws Exception;
	//회원 로그인 시 lastDate 갱신
	public int LoginDateRenewal(MemberDTO dto) throws Exception;
	//회원 로그아웃
	public void logout(HttpServletResponse response) throws Exception;
	
	//회원가입
	public int SignUp(MemberDTO dto) throws Exception;
	//회원가입 시 아이디 중복확인
	public MemberDTO IDCheck(MemberDTO dto) throws Exception;
	//회원정보 수정
	public void MemberInfoUpdate(MemberDTO dto) throws Exception;
	//회원탈퇴
	public void memberDelete(MemberDTO dto) throws Exception;
	
}