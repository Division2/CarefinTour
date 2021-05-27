package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.FAQVO;

@Repository
public class FAQDAOImpl implements FAQDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.FAQMapper";
	
	//자주 찾는 질문(전체)
	@Override
	public List<FAQVO> FAQAllView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".FAQAllView", map);
	}
	
	//자주 찾는 질문 총 갯수
	@Override
	public int FAQTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getFAQTotalCount");
	}
	
	//자주 찾는 질문(카테고리별)
	@Override
	public List<FAQVO> FAQOtherView(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".FAQOtherView", map);
	}
	
	//자주 찾는 질문(카테고리별) 총 갯수
	@Override
	public int FAQOtherTotalCount(String category) throws Exception {
		return sqlSession.selectOne(namespace + ".getFAQOtherTotalCount", category);
	}

	//자주 찾는 질문(카테고리 조회)
	@Override
	public List<Map<String, Object>> FAQCategory() throws Exception {
		return sqlSession.selectList(namespace + ".getFAQCategory");
	}
}