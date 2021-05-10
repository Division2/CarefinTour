package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.TravelPhotoVO;

public interface TravelPhotoService {
		//게시물 목록
		public List<TravelPhotoVO> list(HashMap<String, Integer> map) throws Exception;
		//게시물 작성
		public void addphoto(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception;
		//게시물 조회(아직 안만듬)
		public TravelPhotoVO read(int prid) throws Exception;
		//여행포토 게시물 총 갯수
		public int PhotoTotalCount() throws Exception;
	
}
