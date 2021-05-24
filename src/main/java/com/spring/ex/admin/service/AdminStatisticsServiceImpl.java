package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminStatisticsDAO;
import com.spring.ex.vo.VisitVO;

@Service
public class AdminStatisticsServiceImpl implements AdminStatisticsService {

	@Inject private AdminStatisticsDAO dao;
	
	//방문자 전체 출력
	@Override
	public List<VisitVO> visitorAllView(HashMap<String, Integer> map) throws Exception {
		return dao.visitorAllView(map);
	}

	//방문자 총 갯수
	@Override
	public int visitorTotalCount() throws Exception {
		return dao.visitorTotalCount();
	}
	
	//방문자 검색 출력
	@Override
	public List<VisitVO> visitorSearchView(HashMap<String, Object> map) throws Exception {
		return dao.visitorSearchView(map);
	}

	//방문자 검색 총 갯수
	@Override
	public int visitorSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return dao.visitorSearchTotalCount(totalMap);
	}
}