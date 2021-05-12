package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.InquiryVO;

@Repository
public interface InquiryBoardDAO {
	
	//1:1 문의 등록
	public int InquiryWrite(InquiryVO vo) throws Exception;
	
	//1:1 문의 출력
	public List<InquiryVO> InquiryList(HashMap<String, Integer> map) throws Exception;
	
	//1:1 문의 게시물 총 갯수
	public int InquiryTotalCount() throws Exception;
}