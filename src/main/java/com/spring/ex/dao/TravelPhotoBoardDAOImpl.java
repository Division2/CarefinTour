package com.spring.ex.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TravelPhotoVO;


@Repository
public class TravelPhotoBoardDAOImpl implements TravelPhotoBoardDAO {
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.spring.ex.TravelPhotoMapper";
	//게시글 목록 조회
	@Override
	public List<TravelPhotoVO> list() throws Exception {
		
		return sql.selectList(namespace + ".list");
	}
	// 게시글 작성
	@Override
	public void write(TravelPhotoVO travelPhotoVO) throws Exception {
		sql.insert(namespace + ".insert", travelPhotoVO);
		
	}
	// 게시글 조회
	@Override
	public TravelPhotoVO read(int prid) throws Exception {
		return sql.selectOne(namespace + ".read", prid);
		
	}
	
	@Override
	public void insertFile(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		sql.insert(namespace + ".insertFile", map);
	}
}
