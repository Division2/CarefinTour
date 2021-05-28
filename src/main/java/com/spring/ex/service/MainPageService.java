package com.spring.ex.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.TravelPhotoVO;

@Service
public interface MainPageService {

	//여행 포토 출력
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception;
}