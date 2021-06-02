package com.spring.ex.admin.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminDashBoardDAO;
import com.spring.ex.vo.MemberVO;

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

	//오늘의 매출
	@Override
	public int TodayRevenueTotaclCount() throws Exception {
		return dao.TodayRevenueTotaclCount();
	}

	//기간별 매출 통계
	@Override
	public List<Map<String, Object>> RevenueByPeriod() throws Exception {
		return dao.RevenueByPeriod();
	}

	//회원 성별 비율
	@Override
	public int ManRatio() throws Exception {
		return dao.ManRatio();
	}
	@Override
	public int WomanRatio() throws Exception {
		return dao.WomanRatio();
	}

	//관리자 정보 출력
	@Override
	public MemberVO AdminProfile(String AdminID) throws Exception {
		return dao.AdminProfile(AdminID);
	}

	//관리자 정보 수정
	@Override
	public int AdminProfileEdit(MemberVO vo) throws Exception {
		return dao.AdminProfileEdit(vo);
	}
}