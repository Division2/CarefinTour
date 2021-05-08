package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import com.spring.ex.vo.NoticeBoardVO;

public interface NoticeBoardService {
	
	//공지사항 등록
	public int Write(NoticeBoardVO vo) throws Exception;
	
	//공지사항 출력
	public List<NoticeBoardVO> NoticeList(HashMap<String, Integer> map) throws Exception;
	
	//공지사항 게시물 총 갯수
	public int NoticeTotalCount() throws Exception;
}