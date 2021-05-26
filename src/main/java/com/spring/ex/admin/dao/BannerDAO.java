package com.spring.ex.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.BannerVO;

@Repository
public interface BannerDAO {
	
	//배너수정	
	public void BannerModify(BannerVO vo) throws Exception;
	
	//관리자화면 배너 출력
	public List<BannerVO> BannerView() throws Exception;

	//관리자 배너 수정페이지 출력
	public BannerVO BannerModifyView(int bid) throws Exception;
}
