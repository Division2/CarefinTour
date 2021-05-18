package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MyPageDAO;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.MileageVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	
	@Inject
	private MyPageDAO dao;
	
	//마이페이지 예약 내역 출력
	@Override
	public List<OrderVO> MyPageOrderList(HashMap<String, Object> map) throws Exception {
		return dao.MyPageOrderList(map);
	}
	
	//마이페이지 예약 내역 총 갯수
	@Override
	public int OrderTotalCount(MemberVO vo) throws Exception {
		return dao.OrderTotalCount(vo);
	}
	
	//마이페이지 마일리지 내역 출력
	@Override
	public List<MileageVO> MyPageMileageList(HashMap<String, Object> map) throws Exception {
		return dao.MyPageMileageList(map);
	}

	//마이페이지 마일리지 내역 총 갯수
	@Override
	public int MileageTotalCount(MemberVO vo) throws Exception {
		return dao.MileageTotalCount(vo);
	}
	
	//마이페이지 회원 정보 수정
	@Override
	public int MyPageInfoUpdate(MemberVO vo) throws Exception {	
		return dao.MyPageInfoUpdate(vo);
	}

	//마이페이지 1:1 문의 내역 출력
	@Override
	public List<InquiryVO> MyPageInquiryList(HashMap<String, Object> map) throws Exception {
		return dao.MyPageInquiryList(map);
	}
	
	//마이페이지 1:1 문의 내역(질문)
	@Override
	public InquiryVO MyPageInquiryQuestion(int iId) throws Exception {
		return dao.MyPageInquiryQuestion(iId);
	}
	
	//마이페이지 1:1 문의 내역(답변)
	@Override
	public InquiryAnswerVO MyPageInquiryAnswer(int iId) throws Exception {
		return dao.MyPageInquiryAnswer(iId);
	}
	
	//마이페이지 1:1 문의 내역 총 갯수
	@Override
	public int MyPageInquiryTotalCount(MemberVO vo) throws Exception {
		return dao.MyPageInquiryTotalCount(vo);
	}

	//마이페이지 회원 탈퇴
	@Override
	public void MyPageDelete(MemberVO vo) throws Exception {
		dao.MyPageDelete(vo);
	}
	
	//마이페이지 회원 탈퇴 패스워드 확인
	@Override
	public int MyPagePassChk(MemberVO vo) throws Exception {
		return dao.MyPagePassChk(vo);
	}
}