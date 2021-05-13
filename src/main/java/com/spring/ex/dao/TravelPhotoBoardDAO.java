package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

public interface TravelPhotoBoardDAO {
	//여행 게시판 리스트	
	public List<TravelPhotoVO> list(HashMap<String, Integer> map) throws Exception;
	//마이여행 게시판 리스트	
	public List<TravelPhotoVO> mylist(HashMap<String, Integer> map) throws Exception;
	//여행 게시판 입력	
	public int write(Map<String, Object> map) throws Exception;
	//게시판 읽기(아직 안만듬)	
	public TravelPhotoVO read(int prid) throws Exception;
	//여행포토 게시물 총 갯수
	public int PhotoTotalCount() throws Exception;
	// 게시판 조회수
	public void boardHit(int prid) throws Exception;
	// 파일 조회
	public List<Map<String, Object>> selectFileList(int prid) throws Exception;
	// 게시물 수정
	public int updateFile(Map<String, Object> map) throws Exception;
	// 게시물 삭제
	public void delete(int prid) throws Exception;
	// 게시물 수정
	public void update(TravelPhotoVO travelPhotoVO) throws Exception;
	//탑 앵글러 게시판 입력	
	public int fishwrite(Map<String, Object> map) throws Exception;
	//탑 앵글러 리스트	
	public List<TopAnlgerVO>topanglers(HashMap<String, Integer> map) throws Exception;
	//여행포토 게시물 총 갯수
	public int TopAnglerTotalCount() throws Exception;

}
