package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.NoticeBoardVO;

@Service
public interface NoticeBoardService {
	
	//공지사항 등록
	public int NoticeWrite(NoticeBoardVO vo) throws Exception;
	
	//공지사항 출력
	public List<NoticeBoardVO> NoticeList(HashMap<String, Integer> map) throws Exception;
	
	//공지사항 게시물 총 갯수
	public int NoticeTotalCount() throws Exception;
	
	//공지사항 게시글 내용
	public NoticeBoardVO NoticeBoardView(int nId) throws Exception;
	
	//공지사항 수정
	public int NoticeModify(NoticeBoardVO vo) throws Exception;
	
	//공지사항 삭제
	public int NoticeDelete(int nId) throws Exception;
	
	//공지사항 검색
	public List<NoticeBoardVO> NoticeSearchList(HashMap<String, Object> map) throws Exception;
	
	//공지사항 검색 게시물 총 갯수
	public int NoticeSearchTotalCount(String title) throws Exception;
}