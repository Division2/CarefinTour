package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.FAQVO;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.NoticeBoardVO;

@Repository
public class AdminServiceCenterDAOImpl implements AdminServiceCenterDAO{
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminServiceCenterMapper";
	
	//공지사항 등록
	@Override
	public int NoticeWrite(NoticeBoardVO vo) throws Exception{
		return sqlSession.insert(namespace + ".NoticeWrite", vo);
	}

	//공지사항 출력
	@Override
	public List<NoticeBoardVO> NoticeList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".NoticeView", map);
	}
	
	//공지사항 중요 게시물 총 갯수
	@Override
	public int ImportantNoticeTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getImportantNoticeTotalCount");
	}
	
	//공지사항 게시물 총 갯수
	@Override
	public int NoticeTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getNoticeTotalCount");
	}

	//공지사항 게시글 내용
	@Override
	public NoticeBoardVO NoticeBoardView(int nId) throws Exception {
		return sqlSession.selectOne(namespace + ".NoticeBoardView", nId);
	}

	//공지사항 수정
	@Override
	public int NoticeModify(NoticeBoardVO vo) throws Exception {
		return sqlSession.update(namespace + ".NoticeModify", vo);
	}

	//공지사항 삭제
	@Override
	public int NoticeDelete(int nId) throws Exception {
		return sqlSession.delete(namespace + ".NoticeDelete", nId);
	}
	
	//공지사항 선택삭제 하기
	@Override
	public void SelectDelete(String nId) throws Exception{
	    sqlSession.delete(namespace + ".SelectDelete", nId); 
		}
	
	//공지사항 검색
	@Override
	public List<NoticeBoardVO> NoticeSearchList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".NoticeSearchView", map);
	}

	//공지사항 검색 게시물 총 갯수
	@Override
	public int NoticeSearchTotalCount(String title) throws Exception {
		return sqlSession.selectOne(namespace + ".getNoticeSearchTotalCount", title);
	}
	
	//관리자용 회원목록
	@Override
	public List<MemberVO> getMemberList() throws Exception {
		return sqlSession.selectList(namespace+".memberList");
	}
	
	//관리자용 회원상세정보
    @Override
    public MemberVO ViewMember(int aid) throws Exception {
        return sqlSession.selectOne(namespace+ "viewMember", aid);
    }
//---------------------------------------------------------1:1문의 시작-----------------------------------------------------		
	
	//1:1 문의 등록
	@Override
	public int InquiryWrite(InquiryVO vo) throws Exception {
		return sqlSession.insert(namespace + ".InquiryWrite", vo);
	}
	
	//1:1 문의 출력
	@Override
	public List<InquiryVO> InquiryList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".InquiryView", map);
	}

	//1:1 문의 게시물 총 갯수
	@Override
	public int InquiryTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getInquiryTotalCount");
	}
	
	//1:1 문의 게시글 내용
	@Override
	public InquiryVO InquiryBoardView(int iId) throws Exception {
		return sqlSession.selectOne(namespace + ".InquiryBoardView", iId);
	}
	
	//1:1 문의 답변 등록
	@Override
	public int InquiryAnswerWrite(InquiryAnswerVO vo) throws Exception {
		return sqlSession.insert(namespace + ".InquiryAnswerWrite", vo);
	}
	
	//1:1 문의 답변 게시글 내용
	@Override
	public InquiryAnswerVO InquiryAnswerBoardView(int iId) throws Exception {
		return sqlSession.selectOne(namespace + ".InquiryAnswerBoardView", iId);
	}
	
	//1:1 문의 답변 등록 시 답변완료로 변경
	@Override
	public void InquiryStatusUpdate(int iId) throws Exception {
		sqlSession.update(namespace + ".InquiryStatusUpdate", iId);
	}
	
	//1:1 문의 답변 수정
	@Override
	public int InquiryAnswerModify(InquiryAnswerVO vo) throws Exception {
		return sqlSession.update(namespace + ".InquiryAnswerModify", vo);
	}
	
	//1:1 문의 답변 삭제
	@Override
	public int InquiryAnswerDelete(int iId) throws Exception {
		return sqlSession.delete(namespace + ".InquiryAnswerDelete", iId);
	}
	
	//1:1 문의 답변 등록 시 답변완료로 변경
	@Override
	public void InquiryStatusUpdate2(int iId) throws Exception {
		sqlSession.update(namespace + ".InquiryStatusUpdate2", iId);
	}

	//1:1 문의 검색
	@Override
	public List<InquiryVO> InquirySearchList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".InquirySearchView", map);
	}
	
	//1:1 문의 검색 게시물 총 갯수
	@Override
	public int InquirySearchTotalCount(String name) throws Exception {
		return sqlSession.selectOne(namespace + ".getInquirySearchTotalCount", name);
	}
	
	//1:1 선택삭제 하기
	@Override
	public void SelectDelete2(String iId) throws Exception{
	    sqlSession.delete(namespace + ".SelectDelete2", iId); 
		}
	
	//-----------------------------------------------------FAQ관리 시작------------------------------------------------------
	
	//FAQ 등록
	@Override
	public int FAQWrite(FAQVO vo) throws Exception {
		return sqlSession.insert(namespace + ".FAQWrite", vo);
	}
	
	//FAQ 카테고리 등록
	@Override
	public int CategoryWrite(FAQVO vo) throws Exception {
		return sqlSession.insert(namespace + ".CategoryWrite", vo);
	}
	
	//FAQ 수정
	@Override
	public int FAQModify(FAQVO vo) throws Exception {
		return sqlSession.update(namespace + ".FAQModify", vo);
	}
	
	//FAQ선택 삭제
	@Override
	public void FAQDelete(String fId) throws Exception {
		sqlSession.delete(namespace + ".FAQDelete", fId);
	}
	
	//자주 찾는 질문(전체)
	@Override
	public List<FAQVO> FAQAllView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".FAQAllView", map);
	}
	
	//자주 찾는 질문 총 갯수
	@Override
	public int FAQTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getFAQTotalCount");
	}
	
	//FAQ 내용
	@Override
	public FAQVO FAQBoardView(int fId) throws Exception {
		return sqlSession.selectOne(namespace + ".FAQBoardView", fId);
	}

	//자주 찾는 질문(전체)
	@Override
	public List<FAQVO> FAQCategory(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".FAQCategory", map);
	}
	

}
