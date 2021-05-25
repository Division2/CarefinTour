package com.spring.ex.admin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
}