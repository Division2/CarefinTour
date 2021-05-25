package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.OrderVO;

@Repository
public interface OrderDAO {
	
	//관리자 예약 내역 출력
	public List<OrderVO> AdminOrderList(HashMap<String, Object> map) throws Exception;
	
	//관리자 예약 내역 총 갯수
	public int OrderTotalCount() throws Exception;
	
	//관리자 예약 문의 등록
	public int OrderWrite(OrderVO vo) throws Exception;
	
	//관리자 예약내역 선택삭제
	public void OrderDelete(String oId) throws Exception;
	
	//관리자 예약내역 검색
	public List<OrderVO> OrderSearchList(HashMap<String, Object> map) throws Exception;
	
	//관리자 예약내역 총 갯수
	public int OrderSearchTotalCount(String userId) throws Exception;
}
