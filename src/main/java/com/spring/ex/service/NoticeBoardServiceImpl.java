package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.NoticeBoardDAO;
import com.spring.ex.vo.NoticeBoardVO;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {
	
	@Inject
	private NoticeBoardDAO dao;
	
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
}