package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.FAQDAO;
import com.spring.ex.vo.FAQVO;

@Service
public class FAQServiceImpl implements FAQService {

	@Inject FAQDAO dao;
	
	//자주 찾는 질문(전체)
	@Override
	public List<FAQVO> FAQAllView() throws Exception {
		return dao.FAQAllView();
	}
	
	//자주 찾는 질문(카테고리별)
	@Override
	public List<FAQVO> FAQOtherView(String category) throws Exception {
		return dao.FAQOtherView(category);
	}
}