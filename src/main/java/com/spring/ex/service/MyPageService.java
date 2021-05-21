package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.MileageVO;

@Service
public interface MyPageService {
	
	//마이페이지 예약 내역 출력
	public List<OrderVO> MyPageOrderList(HashMap<String, Object> map) throws Exception;
	
	//마이페이지 예약 내역 총 갯수
	public int OrderTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 마일리지 내역 출력
	public List<MileageVO> MyPageMileageList(HashMap<String, Object> map) throws Exception;
	
	//마이페이지 마일리지 내역 총 갯수
	public int MileageTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 회원 정보 수정
	public int MyPageInfoUpdate(MemberVO vo) throws Exception;
	
	//마이페이지 1:1 문의 내역 출력
	public List<InquiryVO> MyPageInquiryList(HashMap<String, Object> map) throws Exception;
	
	//마이페이지 1:1 문의 내역(질문)
	public InquiryVO MyPageInquiryQuestion(int iId) throws Exception;
	
	//마이페이지 1:1 문의 내역(답변)
	public InquiryAnswerVO MyPageInquiryAnswer(int iId) throws Exception;
	
	//마이페이지 1:1 문의 내역 총 갯수
	public int MyPageInquiryTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 회원 탈퇴
	public void MyPageDelete(MemberVO vo) throws Exception;
	
	//마이페이지 회원 탈퇴 패스워드 확인
	public int MyPagePassChk(MemberVO vo) throws Exception;
}