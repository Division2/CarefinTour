package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.OrderVO;

@Service
public interface AdminMemberService {
	
	//관리자용 회원목록
	public List<MemberVO> getMemberList(HashMap<String, Integer> map) throws Exception;
	
	//관리자용 회원상세보기
	public MemberVO ViewMember(int aid) throws Exception;
	
	//관리자용 회원정보수정
	public void memberUpdate(MemberVO vo) throws Exception;
	
	//관리자용 회원정보 선택삭제
	public void delete(String aid) throws Exception;
	
	//관리자용 회원등록
	public int AdminSignUp(MemberVO vo) throws Exception;
	
	//관리자 회원 검색
	public List<MemberVO> memberSearchList(HashMap<String, Object> map) throws Exception;
	
	//회원검색 총 갯수
	public int memberSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
	
	//회원 게시물 총 갯수
	public int MemberTotalCount() throws Exception;
	
	//회원 문의내역
	public List<InquiryVO> viewInquiry(String userId) throws Exception;
	
	//회원 구매내역
	public List<OrderVO> viewOrder(String userId) throws Exception;
}
