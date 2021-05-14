package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.HotelDAO;
import com.spring.ex.vo.HotelVO;

@Service
public class HotelServiceImpl implements HotelService {
	@Inject HotelDAO dao;
	
	//전체 멤버 출력
	@Override
	public List<HotelVO> hotelList(HashMap<String, Integer> map) throws Exception {
		return dao.hotelList(map);
	}
	//회원가입
	@Override
	public int hotelres(HotelVO hotelVO) throws Exception {
		return dao.hotelres(hotelVO);
	}
	//호텔 예약 총 갯수
	@Override
	public int HotelTotalCount() throws Exception {
		return dao.HotelTotalCount();
	}
}
