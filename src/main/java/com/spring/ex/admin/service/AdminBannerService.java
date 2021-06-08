package com.spring.ex.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.BannerVO;

@Service
public interface AdminBannerService {
	
	//배너수정	
	public void BannerModify(BannerVO vo) throws Exception;
	
	//관리자화면 배너 출력
	public List<BannerVO> BannerView() throws Exception;

	//관리자 배너 수정페이지 출력
	public BannerVO BannerModifyView(int bid) throws Exception;
	
	//사용자 화면에서 배너 출력
	public BannerVO BannerRespectivelyView(int bid) throws Exception;
}