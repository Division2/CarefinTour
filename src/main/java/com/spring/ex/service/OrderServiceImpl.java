package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.OrderDAO;
import com.spring.ex.vo.OrderVO;

@Service
public class OrderServiceImpl implements OrderService {
	@Inject
	private OrderDAO dao;
	
	//관리자 예약 내역 출력
	@Override
	public List<OrderVO> AdminOrderList(HashMap<String, Object> map) throws Exception {
		return dao.AdminOrderList(map);
	}
	
	//관리자 예약 내역 총 갯수
	@Override
	public int OrderTotalCount() throws Exception {
		return dao.OrderTotalCount();
	}
	
	//관리자 선택삭제
	@Override
	public void OrderDelete(String oId) throws Exception {
		dao.OrderDelete(oId);
	}
	
	//관리자 예약내역 등록
	@Override
	public int OrderWrite(OrderVO vo) throws Exception {
		return dao.OrderWrite(vo);
	}
	
	//관리자 예약내역 검색
	@Override
	public List<OrderVO> OrderSearchList(HashMap<String, Object> map) throws Exception {
		return dao.OrderSearchList(map);
	}
	
	//관리자 예약내역 총 갯수
	@Override
	public int OrderSearchTotalCount(String userId) throws Exception {
		return dao.OrderSearchTotalCount(userId);
	}
}