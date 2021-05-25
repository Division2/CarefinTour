package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.FAQVO;

@Repository
public interface FAQDAO {

	//자주 찾는 질문(전체)
	public List<FAQVO> FAQAllView(HashMap<String, Integer> map) throws Exception;
	
	//자주 찾는 질문 총 갯수
	public int FAQTotalCount() throws Exception;
	
	//자주 찾는 질문(카테고리별)
	public List<FAQVO> FAQOtherView(HashMap<String, Object> map) throws Exception;
	
	//자주 찾는 질문(카테고리별) 총 갯수
	public int FAQOtherTotalCount(String category) throws Exception;
}