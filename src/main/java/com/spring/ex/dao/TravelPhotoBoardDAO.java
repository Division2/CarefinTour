package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

public interface TravelPhotoBoardDAO {
	
	//여행 게시판 입력	
	public int TravelPhotoWrite(Map<String, Object> map) throws Exception;
		
	//여행 게시판 리스트	
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map) throws Exception;
	
	//마이여행 게시판 리스트	
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map) throws Exception;
	
	//게시판 읽기
	public TravelPhotoVO TravelPhotoRead(int prid) throws Exception;
	
	//여행포토 게시물 총 갯수
	public int PhotoTotalCount() throws Exception;
	
	// 게시판 조회수
	public void TravelPhotoBoardHit(int prid) throws Exception;
	
	// 파일 조회
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception;
	
	// 게시물 수정(사진)
	public int TravelPhotoUpdateFile(Map<String, Object> map) throws Exception;

	// 게시물 수정(내용)
	public void TravelPhotoUpdate(TravelPhotoVO travelPhotoVO) throws Exception;
	
	// 게시물 삭제
	public void TravelPhotoDelete(int prid) throws Exception;
		
	//탑 앵글러 출력
	public List<TopAnlgerVO> TopanglerView(HashMap<String, Integer> map) throws Exception;

	//탑 앵글러 등록 요청
	public int TopanglerWrite(Map<String, Object> map) throws Exception;
	
	//탑 앵글러 총 갯수
	public int TopAnglerTotalCount() throws Exception;
}