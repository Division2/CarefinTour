package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.HotelVO;

@Repository
public class HotelDAOImpl implements HotelDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.HotelMapper";
	
	//전체 호텔 출력
	@Override
	public List<HotelVO> hotelList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".hotelList", map);
	}
	
	//호텔 예약 
	public int hotelres(HotelVO hotelVO) throws Exception {
		return sqlSession.insert(namespace + ".hotelres", hotelVO);
	}
	//호텔 예약 총 갯수
	@Override
	public int HotelTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getHotelTotalCount");
	}

}
