package com.spring.ex.util;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.VisitVO;

@Repository
public class VisitInsert {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminStatisticsMapper";

	//방문자 카운터
	public int visitorStatistics(VisitVO vo) throws Exception {
		return sqlSession.insert(namespace + ".VisitorCounter", vo);
	}
}