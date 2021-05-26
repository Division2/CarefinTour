package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.BannerVO;

@Service
public interface BannerService {
	
	//배너수정	
	public int BannerModify(Map<String, Object> map) throws Exception;
	
	//관리자화면 배너 출력
	public List<BannerVO> BannerView() throws Exception;

	//관리자 배너 수정페이지 출력
	public BannerVO BannerModifyView(int bid) throws Exception;
}
