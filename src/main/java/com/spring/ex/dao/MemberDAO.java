package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.dto.MemberDTO;

@Repository
public interface MemberDAO {
	//전체 멤버 출력
	public List<MemberDTO> memberList() throws Exception;
	
	//회원 로그인
	public MemberDTO Login(MemberDTO dto) throws Exception;
	//회원 로그인 시 lastDate 갱신
	public int LoginDateRenewal(MemberDTO dto) throws Exception;
	
	//회원가입
	public int SignUp(MemberDTO dto) throws Exception;
	
	//회원가입 시 아이디 중복확인
	public MemberDTO IDCheck(MemberDTO dto) throws Exception;
	
	//회원정보 수정
	public void memberUpdate(MemberDTO dto) throws Exception;
}