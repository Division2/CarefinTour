package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TopAnlgerVO;

@Repository
public class AdminTopAnglerDAOImpl implements AdminTopAnglerDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminTopAnglerMapper";
	
	//탑 앵글러 등록
	@Override
	public void TopAnglerWrite(TopAnlgerVO vo) throws Exception {
		sqlSession.insert(namespace + ".TopAnglerWrite", vo);
	}
	
	//탑 앵글러 삭제
	@Override
	public void TopAnglerDelete(int tId) throws Exception {
		sqlSession.delete(namespace + ".TopAnglerDelete", tId);
	}

	//탑 앵글러 파일 이름 검색
	@Override
	public String TopAnglerFileName(int tId) throws Exception {
		return sqlSession.selectOne(namespace + ".TopAnglerFileName", tId);
	}
	
	//탑 앵글러 출력
	@Override
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".TopAnglerView", map);
	}
	
	//탑 앵글러 총 갯수
	@Override
	public int TopAnglerTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTopAnglerTotalCount");
	}
	
	@Override
	//탑 앵글러 요청 상태 전환(0 <-> 1) / 0 : 미등록, 1 : 등록
	public int TopAnglerStatusChange(TopAnlgerVO vo) throws Exception {
		return sqlSession.update(namespace + ".TopAnglerStatusChange", vo);
	}
}