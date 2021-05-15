package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MyPageDAO;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Inject MyPageDAO dao;

	//마이페이지 1:1 문의 출력
	@Override
	public List<InquiryVO> MyPageInquiryList(HashMap<String, Integer> map) throws Exception {
		return dao.MyPageInquiryList(map);
	}
	
	//1:1 문의 게시물 총 갯수
	@Override
	public int MyPageInquiryTotalCount() throws Exception {
		return dao.MyPageInquiryTotalCount();
	}

	//마이페이지 구매내역 표기
	@Override
	public List<OrderVO> MyPageOrderList(HashMap<String, Integer> map) throws Exception {
		return dao.MyPageOrderList(map);
	}
	//유저 오더 전체수 받기
	@Override
	public int OrderTotalCount() throws Exception {
		return dao.OrderTotalCount();
	}
	//마이페이지 정보 수정
	@Override
	public void MyPageInfoUpdate(MemberVO vo) throws Exception {	
		dao.MyPageInfoUpdate(vo);
	}
	
	//마이페이지 회원탈퇴
	@Override
	public void MyPageDelete(MemberVO vo) throws Exception {
		dao.MyPageDelete(vo);
	}
	
	//마이페이지 패스워드 체크
	@Override
	public int MyPagePassChk(MemberVO vo) throws Exception {
		int result = dao.MyPagePassChk(vo);
		return result;
	}
}
