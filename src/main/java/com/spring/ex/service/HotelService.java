package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.HotelVO;

@Service
public interface HotelService {
	//전체 호텔 출력
	public List<HotelVO> hotelList(HashMap<String, Integer> map) throws Exception;	
	//호텔 예약
	public int hotelres(HotelVO hotelVO) throws Exception;
	//호텔 예약 총 갯수
	public int HotelTotalCount() throws Exception;

}
