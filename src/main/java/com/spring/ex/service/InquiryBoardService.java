package com.spring.ex.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.InquiryVO;

@Service
public interface InquiryBoardService {

	//1:1 문의 출력
	public List<InquiryVO> InquiryList() throws Exception;
}