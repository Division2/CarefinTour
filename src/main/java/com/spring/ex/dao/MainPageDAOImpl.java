package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TravelPhotoVO;

@Repository
public class MainPageDAOImpl implements MainPageDAO {
	@Inject SqlSession sqlSession;
	private static String namespace = "com.spring.ex.MainPageMapper";
	
	//여행 포토 출력
	@Override
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception {
		return sqlSession.selectList(namespace + ".NewTravelPhotoList");
	}
}