package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.InquiryVO;

@Repository
public interface InquiryBoardDAO {
	
	//1:1 문의 출력
	public List<InquiryVO> InquiryList() throws Exception;
}