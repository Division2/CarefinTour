package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.InquiryBoardDAO;
import com.spring.ex.vo.InquiryAnswerVO;
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
	
	//1:1 문의 출력
	@Override
	public List<InquiryVO> MyInquiryList(HashMap<String, Integer> map) throws Exception {
		return dao.MyInquiryList(map);
	}

	//1:1 문의 게시물 총 갯수
	@Override
	public int InquiryTotalCount() throws Exception {
		return dao.InquiryTotalCount();
	}
	
	//1:1 문의 게시글 내용
	@Override
	public InquiryVO InquiryBoardView(int iId) throws Exception {
		return dao.InquiryBoardView(iId);
	}

	//1:1 문의 답변 등록
	@Override
	public int InquiryAnswerWrite(InquiryAnswerVO vo) throws Exception {
		return dao.InquiryAnswerWrite(vo);
	}

	//1:1 문의 답변 게시글 내용
	@Override
	public InquiryAnswerVO InquiryAnswerBoardView(int iId) throws Exception {
		return dao.InquiryAnswerBoardView(iId);
	}

	//1:1 문의 답변 등록 시 답변완료로 변경
	@Override
	public void InquiryStatusUpdate(int iId) throws Exception {
		dao.InquiryStatusUpdate(iId);
	}
	
	//1:1 문의 답변 수정
	@Override
	public int InquiryAnswerModify(InquiryAnswerVO vo) throws Exception {
		return dao.InquiryAnswerModify(vo);
	}

	//1:1 문의 답변 삭제
	@Override
	public int InquiryAnswerDelete(int iId) throws Exception {
		return dao.InquiryAnswerDelete(iId);
	}
	
	//1:1 문의 답변 등록 시 답변완료로 변경
	@Override
	public void InquiryStatusUpdate2(int iId) throws Exception {
		dao.InquiryStatusUpdate2(iId);
	}
	
	//1:1 문의 검색
	@Override
	public List<InquiryVO> InquirySearchList(HashMap<String, Object> map) throws Exception {
		return dao.InquirySearchList(map);
	}
	
	//1:1 문의 검색 게시물 총 갯수
	@Override
	public int InquirySearchTotalCount(String title) throws Exception {
		return dao.InquirySearchTotalCount(title);
	}
}