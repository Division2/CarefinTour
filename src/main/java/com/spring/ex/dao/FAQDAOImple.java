package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.FAQVO;

@Repository
public class FAQDAOImple implements FAQDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.FAQMapper";
	
	//자주 찾는 질문(전체)
	@Override
	public List<FAQVO> FAQAllView() throws Exception {
		return sqlSession.selectList(namespace + ".FAQAllView");
	}

	//자주 찾는 질문(카테고리별)
	@Override
	public List<FAQVO> FAQOtherView(String category) throws Exception {
		return sqlSession.selectList(namespace + ".FAQOtherView", category);
	}
}