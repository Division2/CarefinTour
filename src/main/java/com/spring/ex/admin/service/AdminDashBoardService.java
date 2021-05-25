package com.spring.ex.admin.service;

import org.springframework.stereotype.Service;

@Service
public interface AdminDashBoardService {

	//오늘의 방문자 수
	public int TodayVisitorTotalCount() throws Exception;
	
	//오늘의 공지사항 작성 수
	public int TodayNoticeTotalCount() throws Exception;
	
	//오늘의 1:1문의 작성 수
	public int TodayInquiryTotalCount() throws Exception;
	
	//오늘의 여행 포토 작성 수
	public int TodayTravelPhotoTotalCount() throws Exception;
	
	//오늘의 가입 회원 수
	public int TodayRegisterMemberTotalCount() throws Exception;
}