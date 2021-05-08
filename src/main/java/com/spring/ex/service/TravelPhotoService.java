package com.spring.ex.service;

import java.util.List;

import com.spring.ex.vo.TravelPhotoVO;

public interface TravelPhotoService {
		//게시물 목록
		public List<TravelPhotoVO> list() throws Exception;
		//게시물 작성
		public void addphoto(TravelPhotoVO travelPhotoVO) throws Exception;
		//게시물 조회
		public TravelPhotoVO read(int prid) throws Exception;
}
