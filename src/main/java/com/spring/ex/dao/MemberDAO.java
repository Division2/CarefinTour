package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public interface MemberDAO {
	//전체 멤버 출력
	public List<MemberVO> memberList() throws Exception;
	
	//회원 로그인
	public MemberVO Login(MemberVO dto) throws Exception;
	//회원 로그인 시 lastDate 갱신
	public int LoginDateRenewal(MemberVO dto) throws Exception;
	
	//회원가입
	public int SignUp(MemberVO dto) throws Exception;
	
	//회원가입 시 아이디 중복확인
	public MemberVO IDCheck(MemberVO dto) throws Exception;
	
	//회원정보 수정
	public void MemberInfoUpdate(MemberVO dto)throws Exception;
	
	// 회원 탈퇴
	public void memberDelete(MemberVO dto)throws Exception;
	
}