package com.spring.ex.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminDashBoardDAO;

@Service
public class AdminDashBoardServiceImpl implements AdminDashBoardService {

	@Inject AdminDashBoardDAO dao;
	
	//오늘의 방문자 수
	@Override
	public int TodayVisitorTotalCount() throws Exception {
		return dao.TodayVisitorTotalCount();
	}

	//오늘의 공지사항 작성 수
	@Override
	public int TodayNoticeTotalCount() throws Exception {
		return dao.TodayNoticeTotalCount();
	}

	//오늘의 1:1문의 작성 수
	@Override
	public int TodayInquiryTotalCount() throws Exception {
		return dao.TodayInquiryTotalCount();
	}

	//오늘의 여행 포토 작성 수
	@Override
	public int TodayTravelPhotoTotalCount() throws Exception {
		return dao.TodayTravelPhotoTotalCount();
	}

	//오늘의 가입 회원 수
	@Override
	public int TodayRegisterMemberTotalCount() throws Exception {
		return dao.TodayRegisterMemberTotalCount();
	}
}