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
	public int NoticeWrite(NoticeBoardVO vo) throws Exception{
		return sqlSession.insert(namespace + ".NoticeWrite", vo);
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

}