package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.OrderVO;

@Repository
public interface MemberDAO {
	//전체 멤버 출력
	public List<MemberVO> memberList() throws Exception;
	
	//회원 로그인
	public MemberVO Login(MemberVO vo) throws Exception;
	
	//회원 로그인 시 lastDate 갱신
	public int LoginDateRenewal(MemberVO vo) throws Exception;
	
	//회원가입
	public int SignUp(MemberVO vo) throws Exception;
	
	//회원가입 시 아이디 중복확인
	public MemberVO IDCheck(MemberVO vo) throws Exception;
	
	//비회원 예약 패키지 출력
	public OrderVO NonMemberView(OrderVO vo) throws Exception;
	
	// 아이디 찾기
	public MemberVO UserID(MemberVO vo) throws Exception;
		
	// 비밀번호 찾기
	public MemberVO Password(MemberVO vo) throws Exception;
}