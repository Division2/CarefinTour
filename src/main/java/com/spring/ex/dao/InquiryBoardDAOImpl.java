package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
}