package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

public interface TravelPhotoService {
	
	//게시물 작성
	public int TravelPhotoWrite(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception;
		
	//게시물 목록
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map) throws Exception;
	
	//마이여행 게시판 리스트	
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map) throws Exception;	
	
	//게시물 조회
	public TravelPhotoVO TravelPhotoRead(int prid) throws Exception;
	
	//여행포토 게시물 총 갯수
	public int PhotoTotalCount() throws Exception;
	
	// 게시물 삭제
	public void TravelPhotoDelete(int prid) throws Exception;
	
	// 첨부파일 조회
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception;
	
	// 게시물 수정
	public void TravelPhotoUpdate(TravelPhotoVO travelPhotoVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;
	
	//탑 앵글러 출력
	public List<TopAnlgerVO> TopanglerView(HashMap<String, Integer> map) throws Exception;

	//탑 앵글러 등록 요청
	public int TopanglerWrite(TopAnlgerVO topAnlgerVO, MultipartHttpServletRequest mpRequest) throws Exception;
	
	//탑 앵글러 총 갯수
	public int TopAnglerTotalCount() throws Exception;
}