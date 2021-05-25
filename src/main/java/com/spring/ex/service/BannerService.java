package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import com.spring.ex.vo.BannerVO;

public interface BannerService {
	//여행 포토 수정(사진 & 내용)
	//public void TravelPhotoModify(TravelPhotoVO travelPhotoVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;
	
	//배너 출력
	public List<BannerVO> asd (HashMap<String, Integer> map) throws Exception;
}
