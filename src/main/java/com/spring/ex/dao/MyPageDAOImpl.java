package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.MileageVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.MyPageMapper";
	
	//마이페이지 예약 내역 출력
	@Override
	public List<OrderVO> MyPageOrderList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".MyPageOrderList", map);
	}
	
	//마이페이지 예약 내역 총 갯수
	@Override
	public int OrderTotalCount(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".getOrderTotalCount", vo);
	}
	
	//마이페이지 마일리지 내역 출력
	@Override
	public List<MileageVO> MyPageMileageList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".MyPageMileageList", map);
	}

	//마이페이지 마일리지 내역 총 갯수
	@Override
	public int MileageTotalCount(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".getMileageTotalCount", vo);
	}
	
	//마이페이지 회원 정보 수정
	@Override
	public int MyPageInfoUpdate(MemberVO vo) throws Exception {
		return sqlSession.update(namespace+".MyPageInfoUpdate", vo);
	}
	
	//마이페이지 1:1 문의 내역 출력
	@Override
	public List<InquiryVO> MyPageInquiryList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".MyPageInquiryList", map);
	}
	
	//마이페이지 1:1 문의 내역(질문)
	@Override
	public InquiryVO MyPageInquiryQuestion(int iId) throws Exception {
		return sqlSession.selectOne(namespace + ".MyPageInquiryQuestion", iId);
	}
	
	//마이페이지 1:1 문의 내역(답변)
	@Override
	public InquiryAnswerVO MyPageInquiryAnswer(int iId) throws Exception {
		return sqlSession.selectOne(namespace + ".MyPageInquiryAnswer", iId);
	}
	
	//마이페이지 1:1 문의 내역 총 갯수
	@Override
	public int MyPageInquiryTotalCount(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".getMyPageInquiryTotalCount", vo);
	}

	//마이페이지 회원 탈퇴
	@Override
	public void MyPageDelete(MemberVO vo) throws Exception {
		sqlSession.delete(namespace+".MyPageDelete", vo);
	}	
	
	//마이페이지 회원 탈퇴 패스워드 확인
	@Override
	public int MyPagePassChk(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".MyPagePassChk", vo);
	}
}