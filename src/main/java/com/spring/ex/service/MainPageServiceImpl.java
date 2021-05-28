package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MainPageDAO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public class MainPageServiceImpl implements MainPageService {
	@Inject MainPageDAO dao;
	
	//여행 포토 출력
	@Override
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception {
		return dao.NewTravelPhotoList();
	}
}