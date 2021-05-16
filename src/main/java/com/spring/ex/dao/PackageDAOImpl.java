package com.spring.ex.dao;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PackageDAOImpl implements PackageDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.PackageMapper";
	
	// 패키지 작성
	@Override
	public int PackageWrite(Map<String, Object> map) throws Exception {
		return sqlSession.insert(namespace + ".PackageWrite", map);
	}
}
