package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.FAQVO;

@Service
public interface FAQService {
	
	//자주 찾는 질문(전체)
	public List<FAQVO> FAQAllView(HashMap<String, Integer> map) throws Exception;
	
	//자주 찾는 질문(카테고리별)
	public List<FAQVO> FAQOtherView(HashMap<String, Object> map) throws Exception;
	
	//자주 찾는 질문 총 갯수
	public int FAQTotalCount() throws Exception;
	
	//자주 찾는 질문(카테고리별) 총 갯수
	public int FAQOtherTotalCount(String category) throws Exception;
	
	//자주 찾는 질문(카테고리 조회)
	public List<Map<String, Object>> FAQCategory() throws Exception;
}