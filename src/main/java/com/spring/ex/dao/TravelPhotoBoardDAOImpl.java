package com.spring.ex.dao;

import java.util.HashMap;
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
	public List<TravelPhotoVO> list(HashMap<String, Integer> map) throws Exception {
		
		return sql.selectList(namespace + ".list",map);
	}
	//마이게시글 목록 조회
	@Override
	public List<TravelPhotoVO> mylist(HashMap<String, Integer> map) throws Exception {
		
		return sql.selectList(namespace + ".mylist",map);
	}
	// 게시글 작성
	@Override
	public int write(Map<String, Object> map) throws Exception {
		return sql.insert(namespace + ".insert", map);
		
	}
	// 게시글 조회
	@Override
	public TravelPhotoVO read(int prid) throws Exception {
		return sql.selectOne(namespace + ".read", prid);
		
	}
	//여행포토 게시물 총 갯수
	@Override
	public int PhotoTotalCount() throws Exception {
		return sql.selectOne(namespace + ".getPhotoTotalCount");
	}
	
	//게시글 조회수
	@Override
	public void boardHit(int prid) throws Exception {
		// TODO Auto-generated method stub
		sql.update(namespace  + ".boardHit", prid);
	}
	
	// 게시물 수정
	@Override
	public void update(TravelPhotoVO travelPhotoVO) throws Exception {
		
		sql.update(namespace + ".update", travelPhotoVO);
	}

	// 게시물 삭제
	@Override
	public void delete(int prid) throws Exception {
		
		sql.delete(namespace + ".delete", prid);
	}
}
