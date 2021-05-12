package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.InquiryVO;

@Service
public interface InquiryBoardService {
	
	//1:1 문의 등록
	public int InquiryWrite(InquiryVO vo) throws Exception;

	//1:1 문의 출력
	public List<InquiryVO> InquiryList(HashMap<String, Integer> map) throws Exception;
	
	//1:1 문의 게시물 총 갯수
	public int InquiryTotalCount() throws Exception;
}