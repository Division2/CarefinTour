package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public interface TravelReviewService {
	
	//여행 포토 작성
	public int TravelPhotoWrite(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception;
		
	//여행 포토 출력
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map) throws Exception;
	
	//여행 포토 조회
	public TravelPhotoVO TravelPhotoView(int prid) throws Exception;
	
	//여행 포토 총 갯수
	public int TravelPhotoTotalCount() throws Exception;
	
	//여행 포토 수정(사진 & 내용)
	public void TravelPhotoUpdate(TravelPhotoVO travelPhotoVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;
	
	//여행 포토 삭제
	public void TravelPhotoDelete(int prid) throws Exception;
	
	//여행 포토 조회수 증가
	public void TravelPhotoBoardHit(int prid) throws Exception;
	
	//첨부파일 조회
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception;
	
	//여행 포토 내 게시글 리스트
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map) throws Exception;	
	
	//여행 포토 내 게시글 총 갯수
	public int MyPhotoTotalCount(MemberVO vo) throws Exception;
	
	//탑 앵글러 출력
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception;

	//탑 앵글러 총 갯수
	public int TopAnglerTotalCount() throws Exception;
}