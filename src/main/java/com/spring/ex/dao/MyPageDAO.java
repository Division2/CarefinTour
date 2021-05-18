package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.MileageVO;

@Repository
public interface MyPageDAO {
	
	//마이페이지 예약 내역 출력
	public List<OrderVO> MyPageOrderList(HashMap<String, Integer> map) throws Exception;
	
	//마이페이지 예약 내역 총 갯수
	public int OrderTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 마일리지 내역 출력
	public List<MileageVO> MyPageMileageList(HashMap<String, Integer> map) throws Exception;
	
	//마이페이지 마일리지 내역 총 갯수
	public int MileageTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 1:1 문의 출력
	public List<InquiryVO> MyPageInquiryList(HashMap<String, Integer> map) throws Exception;
	
	//마이페이지 1:1 읽기
	public InquiryVO MyPageInquiryRead(int iId) throws Exception;
	
	//1:1 문의 게시물 총 갯수
	public int MyPageInquiryTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 회원정보 수정
	public void MyPageInfoUpdate(MemberVO vo)throws Exception;
	
	//마이페이지 회원 탈퇴
	public void MyPageDelete(MemberVO vo)throws Exception;
	
	//마이페이지 비밀번호 체크
	public int MyPagePassChk(MemberVO vo) throws Exception;
}