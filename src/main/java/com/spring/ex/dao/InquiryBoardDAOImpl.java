package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;

@Repository
public class InquiryBoardDAOImpl implements InquiryBoardDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.InquiryBoardMapper";
	
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
	public int InquirySearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return sqlSession.selectOne(namespace + ".getInquirySearchTotalCount", searchMap);
	}
}