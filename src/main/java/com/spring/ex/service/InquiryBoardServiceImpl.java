package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.InquiryBoardDAO;
import com.spring.ex.vo.InquiryVO;

@Service
public class InquiryBoardServiceImpl implements InquiryBoardService {

	@Inject
	private InquiryBoardDAO dao;
	
	//1:1 문의 등록
	@Override
	public int InquiryWrite(InquiryVO vo) throws Exception {
		return dao.InquiryWrite(vo);
	}

	//1:1 문의 출력
	@Override
	public List<InquiryVO> InquiryList(HashMap<String, Integer> map) throws Exception {
		return dao.InquiryList(map);
	}

	//1:1 문의 게시물 총 갯수
	@Override
	public int InquiryTotalCount() throws Exception {
		return dao.InquiryTotalCount();
	}

}