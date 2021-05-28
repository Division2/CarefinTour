package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TravelPhotoVO;

@Repository
public interface MainPageDAO {
	
	//여행 포토 출력
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception;
}