package com.spring.ex.admin.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public class AdminDashBoardDAOImpl implements AdminDashBoardDAO {

	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminDashBoardMapper";
	
	//오늘의 방문자 수
	@Override
	public int TodayVisitorTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTodayVisitorTotalCount");
	}

	//오늘의 공지사항 작성 수
	@Override
	public int TodayNoticeTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTodayNoticeTotalCount");
	}
	
	//오늘의 1:1문의 작성 수
	@Override
	public int TodayInquiryTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTodayInquiryTotalCount");
	}
	
	//오늘의 여행 포토 작성 수
	@Override
	public int TodayTravelPhotoTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTodayTravelPhotoTotalCount");
	}
	
	//오늘의 가입 회원 수
	@Override
	public int TodayRegisterMemberTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTodayRegisterMemberTotalCount");
	}
	
	//오늘의 매출
	@Override
	public int TodayRevenueTotaclCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTodayRevenueTotalCount");
	}

	//기간별 매출 통계
	@Override
	public List<Map<String, Object>> RevenueByPeriod() throws Exception {
		return sqlSession.selectList(namespace + ".RevenueByPeriod");
	}

	//회원 성별 비율
	@Override
	public int ManRatio() throws Exception {
		return sqlSession.selectOne(namespace + ".ManRatio");
	}
	@Override
	public int WomanRatio() throws Exception {
		return sqlSession.selectOne(namespace + ".WomanRatio");
	}

	//관리자 정보 출력
	@Override
	public MemberVO AdminProfile(String AdminID) throws Exception {
		return sqlSession.selectOne(namespace + ".AdminProfile", AdminID);
	}

	//관리자 정보 수정
	@Override
	public int AdminProfileEdit(MemberVO vo) throws Exception {
		return sqlSession.update(namespace + ".AdminProfileEdit", vo);
	}
}