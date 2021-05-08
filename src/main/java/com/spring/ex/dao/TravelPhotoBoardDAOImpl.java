package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TravelPhotoVO;


@Repository
public class TravelPhotoBoardDAOImpl implements TravelPhotoBoardDAO {
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.spring.ex.TravelPhotoMapper";
	
	@Override
	public List<TravelPhotoVO> list() throws Exception {
		
		return sql.selectList(namespace + ".list");
	}
	// 게시글 작성
	@Override
	public void write(TravelPhotoVO travelPhotoVO) throws Exception {
		sql.insert(namespace + ".insert", travelPhotoVO);
		
	}
}
