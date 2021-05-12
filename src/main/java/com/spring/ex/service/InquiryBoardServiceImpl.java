package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.InquiryBoardDAO;
import com.spring.ex.vo.InquiryVO;

@Service
public class InquiryBoardServiceImpl implements InquiryBoardService {

	@Inject
	private InquiryBoardDAO dao;
	
	//1:1 문의 출력
	@Override
	public List<InquiryVO> InquiryList() throws Exception {
		return dao.InquiryList();
	}
}