package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.VisitVO;

@Repository
public interface AdminStatisticsDAO {
	
	//방문자 전체 출력
	public List<VisitVO> visitorAllView(HashMap<String, Integer> map) throws Exception;
	
	//방문자 총 갯수
	public int visitorTotalCount() throws Exception;
	
	//방문자 검색 출력
	public List<VisitVO> visitorSearchView(HashMap<String, Object> map) throws Exception;
	
	//방문자 검색 총 갯수
	public int visitorSearchTotalCount(HashMap<String, String> totalMap) throws Exception;
}