package com.spring.ex.dao;

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
	
	//1:1 문의 출력
	@Override
	public List<InquiryVO> InquiryList() throws Exception {
		return sqlSession.selectList(namespace + ".InquiryView");
	}
}