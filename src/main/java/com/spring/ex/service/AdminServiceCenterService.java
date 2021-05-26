package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.FAQVO;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.NoticeBoardVO;

@Service
public interface AdminServiceCenterService {
	//공지사항 등록
	public int NoticeWrite(NoticeBoardVO vo) throws Exception;
	
	//공지사항 출력
	public List<NoticeBoardVO> NoticeList(HashMap<String, Integer> map) throws Exception;
	
	//공지사항 중요 게시물 총 갯수
	public int ImportantNoticeTotalCount() throws Exception;
	
	//공지사항 게시물 총 갯수
	public int NoticeTotalCount() throws Exception;
	
	//공지사항 게시글 내용
	public NoticeBoardVO NoticeBoardView(int nId) throws Exception;
	
	//공지사항 수정
	public int NoticeModify(NoticeBoardVO vo) throws Exception;
	
	//공지사항 삭제
	public int NoticeDelete(int nId) throws Exception;
	
	//공지사항 선택삭제
	public void SelectDelete (String nId)throws Exception;
	
	//공지사항 검색
	public List<NoticeBoardVO> NoticeSearchList(HashMap<String, Object> map) throws Exception;
	
	//공지사항 검색 게시물 총 갯수
	public int NoticeSearchTotalCount(String title) throws Exception;
	
	//관리자용 회원목록
	public List<MemberVO> getMemberList() throws Exception;
	
	//관리자용 회원상세보기
	public MemberVO ViewMember(int aid) throws Exception;
	
	//관리자용 회원정보수정
	public void memberUpdate(MemberVO vo) throws Exception;
	
	//관리자용 회원정보 선택삭제
	public void delete(String aid) throws Exception;
	//----------------------------------------------------1:1문의 시작----------------------------------------------------------
	
	//1:1 문의 등록
	public int InquiryWrite(InquiryVO vo) throws Exception;

	//1:1 문의 출력
	public List<InquiryVO> InquiryList(HashMap<String, Integer> map) throws Exception;
	
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
	public int InquirySearchTotalCount(String name) throws Exception;

	//1:1 선택삭제
	public void SelectDelete2 (String iId)throws Exception;
	
	//------------------------------------------------------FAQ관리 시작---------------------------------------------
	
	//FAQ 등록
	public int FAQWrite(FAQVO vo) throws Exception;
	
	//FAQ 카테고리 등록
	public int CategoryWrite(FAQVO vo) throws Exception;
	
	//FAQ 수정
	public int FAQModify(FAQVO vo) throws Exception;
	
	//FAQ 선택삭제
	public void FAQDelete(String fId) throws Exception;
		
	//자주 찾는 질문(전체)
	public List<FAQVO> FAQAllView(HashMap<String, Integer> map) throws Exception;
	
	//자주 찾는 질문 총 갯수
	public int FAQTotalCount() throws Exception;

	//FAQ 내용
	public FAQVO FAQBoardView(int fId) throws Exception;
	
	//FAQ 카테고리 내용
	public List<FAQVO> FAQCategory(HashMap<String, Integer> map) throws Exception;

	

	

	
}
