package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.PackageVO;

@Repository
public class PackageDAOImpl implements PackageDAO {
	@Inject
	private SqlSession sql;
	private static final String namespace = "com.spring.ex.PackageMapper";
	
	// 패키지 작성
	@Override
	public int PackageWrite(Map<String, Object> map) throws Exception {
		return sql.insert(namespace + ".PackageWrite", map);
	}

	@Override
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception {
		return sql.selectList(namespace +"AdminPackageView", map);
	}
	
}
