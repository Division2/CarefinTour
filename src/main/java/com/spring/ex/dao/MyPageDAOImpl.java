package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.TravelPhotoVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.MyPageMapper";
	
	//마이페이지 1:1 문의 출력
	@Override
	public List<InquiryVO> MyPageInquiryList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".MyPageInquiryList", map);
	}
	
	//마이페이지 1:1 문의 읽기
	@Override
	public InquiryVO MyPageInquiryRead(int iId) throws Exception {
		return sqlSession.selectOne(namespace + ".MyPageInquiryRead", iId);
	}
	
	//1:1 문의 게시물 총 갯수
	@Override
	public int MyPageInquiryTotalCount(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".getMyPageInquiryTotalCount",vo);
	}

	//마이페이지 구매내역 표기
	@Override
	public List<OrderVO> MyPageOrderList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".MyPageOrderList", map);
	}
	
	//유저 오더 전체수 받기
	@Override
	public int OrderTotalCount(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".getOrderTotalCount",vo);
	}
	
	//마이페이지 회원정보 수정
	@Override
	public void MyPageInfoUpdate(MemberVO vo) throws Exception {
		sqlSession.update(namespace+".MyPageInfoUpdate", vo); 
		System.out.println(sqlSession);
	}
	
	//마이페이지 회원탈퇴
	@Override
	public void MyPageDelete(MemberVO vo) throws Exception {
		sqlSession.delete(namespace+".MyPageDelete", vo);
	}	
	
	//마이페이지 패스워드 체크
	@Override
	public int MyPagePassChk(MemberVO vo) throws Exception {
		int result = sqlSession.selectOne(namespace + ".MyPagePassChk", vo);
		return result;
	}

}
