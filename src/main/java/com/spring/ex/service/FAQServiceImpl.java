package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.FAQDAO;
import com.spring.ex.vo.FAQVO;

@Service
public class FAQServiceImpl implements FAQService {

	@Inject
	private FAQDAO dao;
	
	//자주 찾는 질문(전체)
	@Override
	public List<FAQVO> FAQAllView(HashMap<String, Integer> map) throws Exception {
		return dao.FAQAllView(map);
	}
		
	//자주 찾는 질문 총 갯수
	@Override
	public int FAQTotalCount() throws Exception {
		return dao.FAQTotalCount();
	}	

	//자주 찾는 질문(카테고리별)
	@Override
	public List<FAQVO> FAQOtherView(HashMap<String, Object> map) throws Exception {
		return dao.FAQOtherView(map);
	}

	//자주 찾는 질문(카테고리별) 총 갯수
	@Override
	public int FAQOtherTotalCount(String category) throws Exception {
		return dao.FAQOtherTotalCount(category);
	}
}