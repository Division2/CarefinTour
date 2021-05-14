package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;

@Service
public interface InquiryBoardService {
	
	//1:1 문의 등록
	public int InquiryWrite(InquiryVO vo) throws Exception;

	//1:1 문의 출력
	public List<InquiryVO> InquiryList(HashMap<String, Integer> map) throws Exception;
	
	//마이페이지 1:1 문의 출력
	public List<InquiryVO> InquiryList1(HashMap<String, Integer> map) throws Exception;
	
	//1:1 문의 게시물 총 갯수
	public int InquiryTotalCount() throws Exception;
	
	//1:1 문의 게시글 내용
	public InquiryVO InquiryBoardView(int iId) throws Exception;
	
	//1:1 문의 답변 등록
	public int InquiryAnswerWrite(InquiryAnswerVO vo) throws Exception;
	
	//1:1 문의 답변 게시글 내용
	public InquiryAnswerVO InquiryAnswerBoardView(int iId) throws Exception;
	
	//1:1 문의 답변 등록 시 답변완료로 변경
	public void InquiryStatusUpdate(int iId) throws Exception;
	
	//1:1 문의 답변 수정
	public int InquiryAnswerModify(InquiryAnswerVO vo) throws Exception;
	
	//1:1 문의 답변 삭제
	public int InquiryAnswerDelete(int iId) throws Exception;
	
	//1:1 문의 답변 등록 시 답변대기로 변경
	public void InquiryStatusUpdate2(int iId) throws Exception;
	
	//1:1 문의 검색
	public List<InquiryVO> InquirySearchList(HashMap<String, Object> map) throws Exception;
	
	//1:1 문의 검색 게시물 총 갯수
	public int InquirySearchTotalCount(String title) throws Exception;
}