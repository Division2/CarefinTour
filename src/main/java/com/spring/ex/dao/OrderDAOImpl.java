package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.OrderMapper";
	
	//관리자 예약 내역 출력
	@Override
	public List<OrderVO> AdminOrderList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".AdminOrderList", map);
	}
	
	//관리자 예약 내역 총 갯수
	@Override
	public int OrderTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getOrderTotalCount");
	}
	
	//관리자 예약 내역 삭제
	@Override
	public void OrderDelete(String oId) throws Exception {
		sqlSession.delete(namespace + ".OrderDelete", oId);
	}
	
	//관리자 예약 내역 등록
	@Override
	public int OrderWrite(OrderVO vo) throws Exception {
		return sqlSession.insert(namespace + ".OrderWrite", vo);
	}
	
	//관리자 예약 내역 검색
	@Override
	public List<OrderVO> OrderSearchList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".OrderSearchView", map);
	}
	
	//관리자 예약 내역 총 갯수
	@Override
	public int OrderSearchTotalCount(String userId) throws Exception {
		return sqlSession.selectOne(namespace + ".getOrderSearchTotalCount", userId);
	}

}
