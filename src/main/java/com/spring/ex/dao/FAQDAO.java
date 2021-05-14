package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.FAQVO;

@Repository
public interface FAQDAO {

	//자주 찾는 질문(전체)
	public List<FAQVO> FAQAllView() throws Exception;
	
	//자주 찾는 질문(카테고리별)
	public List<FAQVO> FAQOtherView(String category) throws Exception;
}