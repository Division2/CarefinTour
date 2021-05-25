package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.VisitVO;

@Repository
public class AdminStatisticsDAOImpl implements AdminStatisticsDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminStatisticsMapper";

	//방문자 전체 출력
	@Override
	public List<VisitVO> visitorAllView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".VisitorAllView", map);
	}

	//방문자 총 갯수
	@Override
	public int visitorTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getVisitTotalCount");
	}

	//방문자 검색 출력
	@Override
	public List<VisitVO> visitorSearchView(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".VisitorSearchView", map);
	}

	//방문자 검색 총 갯수
	@Override
	public int visitorSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return sqlSession.selectOne(namespace + ".getVisitSearchTotalCount", totalMap);
	}
}