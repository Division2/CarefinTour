package com.spring.ex.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminBannerDAO;
import com.spring.ex.vo.BannerVO;

@Service
public class AdminBannerServiceImpl implements AdminBannerService{
	
	@Inject
	private AdminBannerDAO dao;
	
	//배너수정	
	public void BannerModify(BannerVO vo) throws Exception {
		dao.BannerModify(vo);
	}
	
	//관리자화면 배너 출력
	public List<BannerVO> BannerView() throws Exception {
		return dao.BannerView();
	}

	//관리자 배너 수정페이지 출력
	public BannerVO BannerModifyView(int bid) throws Exception {
		return dao.BannerModifyView(bid);
	}
	
	//사용자 화면에서 배너 출력
	public BannerVO BannerRespectivelyView(int bid) throws Exception {
		return dao.BannerRespectivelyView(bid);
	}
}