package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.BannerVO;

@Service
public interface BannerService {
	
	//배너수정	
	public int BannerModify(Map<String, Object> map) throws Exception;
	
	//배너 출력
	public List<BannerVO> BannerView() throws Exception;

	//여행패키지 파일이름 검색 - 파일 삭제하려고 사용
	public BannerVO BannerFileName(int bid) throws Exception;
}
