package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.MileageVO;
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
	
	//회원가입 마일리지 적립
	public int MemberSignUpSavingMileage(MileageVO vo) throws Exception;
	
	//회원가입 시 아이디 중복확인
	public MemberVO IDCheck(MemberVO vo) throws Exception;
	
	//비회원 예약 확인
	public OrderVO NonMemberView(OrderVO vo) throws Exception;
	
	//아이디 찾기
	public MemberVO findID(MemberVO vo) throws Exception;
		
	//비밀번호 찾기
	public MemberVO findPassword(MemberVO vo) throws Exception;
	
	//임시 비밀번호 발급
	public int UpdateTempPassword(MemberVO vo) throws Exception;
}