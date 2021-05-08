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
	public int Write(NoticeBoardVO vo) throws Exception {
		return dao.Write(vo);
	}

	//공지사항 출력
	@Override
	public List<NoticeBoardVO> NoticeList(HashMap<String, Integer> map) throws Exception {
		return dao.NoticeList(map);
	}

	//공지사항 게시물 총 갯수
	@Override
	public int NoticeTotalCount() throws Exception {
		return dao.NoticeTotalCount();
	}
}