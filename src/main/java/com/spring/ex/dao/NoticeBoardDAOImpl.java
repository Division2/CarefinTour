package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.NoticeBoardVO;

@Repository
public class NoticeBoardDAOImpl implements NoticeBoardDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.NoticeBoardMapper";
	
	//공지사항 등록
	@Override
	public int Write(NoticeBoardVO vo) throws Exception{
		return sqlSession.insert(namespace + ".Write", vo);
	}

	//공지사항 출력
	@Override
	public List<NoticeBoardVO> NoticeList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".NoticeView", map);
	}

	//공지사항 게시물 총 갯수
	@Override
	public int NoticeTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getNoticeTotalCount");
	}
}