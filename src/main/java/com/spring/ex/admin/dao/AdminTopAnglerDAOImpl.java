package com.spring.ex.admin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TopAnlgerVO;

@Repository
public class AdminTopAnglerDAOImpl implements AdminTopAnglerDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminTopAnglerMapper";
	
	//탑앵글러 등록
	@Override
	public void TopAnglerWrite(TopAnlgerVO vo) throws Exception {
		sqlSession.insert(namespace + ".TopAnglerWrite", vo);
	}
	
	//탑앵글러 삭제
	@Override
	public void TopAnglerDelete(int tId) throws Exception {
		sqlSession.delete(namespace + ".TopAnglerDelete", tId);
	}

	//탑앵글러 파일 이름 검색
	@Override
	public String TopAnglerFileName(int tId) throws Exception {
		return sqlSession.selectOne(namespace + ".TopAnglerFileName", tId);
	}
}