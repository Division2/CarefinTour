package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminServiceCenterDAO;
import com.spring.ex.vo.FAQVO;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.NoticeBoardVO;

@Service
public class AdminServiceCenterServiceImpl implements AdminServiceCenterService {
	@Inject
	private AdminServiceCenterDAO dao;
	
	//공지사항 등록
	@Override
	public int NoticeWrite(NoticeBoardVO vo) throws Exception {
		return dao.NoticeWrite(vo);
	}

	//공지사항 출력
	@Override
	public List<NoticeBoardVO> NoticeList(HashMap<String, Integer> map) throws Exception {
		return dao.NoticeList(map);
	}
	
	//공지사항 중요 게시물 총 갯수
	@Override
	public int ImportantNoticeTotalCount() throws Exception {
		return dao.ImportantNoticeTotalCount();
	}

	//공지사항 게시물 총 갯수
	@Override
	public int NoticeTotalCount() throws Exception {
		return dao.NoticeTotalCount();
	}

	//공지사항 게시글 내용
	@Override
	public NoticeBoardVO NoticeBoardView(int nId) throws Exception {
		return dao.NoticeBoardView(nId);
	}

	//공지사항 수정
	@Override
	public int NoticeModify(NoticeBoardVO vo) throws Exception {
		return dao.NoticeModify(vo);
	}

	//공지사항 삭제
	@Override
	public int NoticeDelete(int nId) throws Exception {
		return dao.NoticeDelete(nId);
	}
	
	//공지사항 선택삭제
	@Override
	public void SelectDelete(String nId) throws Exception{
		dao.SelectDelete(nId);
	}
	
	//공지사항 검색
	@Override
	public List<NoticeBoardVO> NoticeSearchList(HashMap<String, Object> map) throws Exception {
		return dao.NoticeSearchList(map);
	}
	
	//공지사항 검색 게시물 총 갯수
	@Override
	public int NoticeSearchTotalCount(String title) throws Exception {
		return dao.NoticeSearchTotalCount(title);
	}
	
	//관리자용 회원목록
	@Override
	public List<MemberVO> getMemberList() throws Exception {
		return dao.getMemberList();
	}
	
	//----------------------------------------------------1:1문의 시작----------------------------------------------------------

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
	public int InquirySearchTotalCount(String name) throws Exception {
		return dao.InquirySearchTotalCount(name);
	}
	
	//1:1 선택삭제
	@Override
	public void SelectDelete2(String iId) throws Exception{
		dao.SelectDelete2(iId);
	}

	//----------------------------------------------FAQ관리시작--------------------------------------------------	
	//FAQ 등록
	@Override
	public int FAQWrite(FAQVO vo) throws Exception {
		return dao.FAQWrite(vo);
	}
	
	//FAQ 수정
	@Override
	public int FAQModify(FAQVO vo) throws Exception {
		return dao.FAQModify(vo);
	}

	//FAQ 선택삭제
	@Override
	public void FAQDelete(String fId) throws Exception {
		dao.FAQDelete(fId);
	}
	
	//자주 찾는 질문(전체)
	@Override
	public List<FAQVO> FAQAllView(HashMap<String, Integer> map) throws Exception {
		return dao.FAQAllView(map);
	}
		
	//자주 찾는 질문 총 갯수
	@Override
	public int FAQTotalCount() throws Exception {
		return dao.FAQTotalCount();
	}	
	
	//FAQ 내용
	@Override
	public FAQVO FAQBoardView(int fId) throws Exception {
		return dao.FAQBoardView(fId);
	}
	
}
