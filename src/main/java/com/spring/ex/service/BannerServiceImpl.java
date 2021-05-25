package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.BannerDAO;
import com.spring.ex.util.FileUtils;
import com.spring.ex.vo.BannerVO;

@Service
public class BannerServiceImpl implements BannerService{
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private BannerDAO dao;
	
	//배너수정	
	public int BannerModify(Map<String, Object> map) throws Exception {
		return 0;
	}
	
	//배너 출력
	public List<BannerVO> BannerView() throws Exception {
		return dao.BannerView();
	}

	//여행패키지 파일이름 검색 - 파일 삭제하려고 사용
	public BannerVO BannerFileName(int bid) throws Exception {
		return null;
	}

}
