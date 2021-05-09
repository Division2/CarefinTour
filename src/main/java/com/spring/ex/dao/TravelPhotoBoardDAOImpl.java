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
	public void write(Map<String, Object> map) throws Exception {
		sql.insert(namespace + ".insert", map);
		
	}
	// 게시글 조회(아직 안만듬)
	@Override
	public TravelPhotoVO read(int prid) throws Exception {
		return sql.selectOne(namespace + ".read", prid);
		
	}
	
}
