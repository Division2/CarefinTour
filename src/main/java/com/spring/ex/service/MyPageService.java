package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;

@Service
public interface MyPageService {
	
	//마이페이지 1:1 문의 출력
	public List<InquiryVO> MyPageInquiryList(HashMap<String, Integer> map) throws Exception;
	
	//마이페이지 1:1 문의 읽기
	public InquiryVO MyPageInquiryRead(int iID) throws Exception;
	
	//1:1 문의 게시물 총 갯수
	public int MyPageInquiryTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 구매내역 표시
	public List<OrderVO> MyPageOrderList(HashMap<String, Integer> map) throws Exception;
	
	//유저 오더 전체수 받기
	public int OrderTotalCount(MemberVO vo) throws Exception;
	
	//마이페이지 회원정보 수정
	public void MyPageInfoUpdate(MemberVO vo) throws Exception;
	
	//마이페이지 회원탈퇴
	public void MyPageDelete(MemberVO vo) throws Exception;
	
	//마이페이지 비밀번호 체크
	public int MyPagePassChk(MemberVO vo) throws Exception;

}
