package com.spring.ex.admin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public interface AdminDashBoardDAO {
	
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
	
	//오늘의 매출
	public int TodayRevenueTotaclCount() throws Exception;
	
	//기간별 매출 통계
	public List<Map<String, Object>> RevenueByPeriod() throws Exception;
	
	//회원 성별 비율
	public int ManRatio() throws Exception;
	public int WomanRatio() throws Exception;
	
	//관리자 정보 출력
	public MemberVO AdminProfile(String AdminID) throws Exception;
	
	//관리자 정보 수정
	public int AdminProfileEdit(MemberVO vo) throws Exception;
}