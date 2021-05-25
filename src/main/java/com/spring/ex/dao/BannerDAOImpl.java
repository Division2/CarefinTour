package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.spring.ex.vo.BannerVO;

public class BannerDAOImpl implements BannerDAO {
	@Inject
	private SqlSession sql;
	private static final String namespace = "com.spring.ex.BannerMapper";
	
	//배너 수정
	@Override
	public int BannerModify(Map<String, Object> map) throws Exception {
		return sql.update(namespace + ".BannerModify", map);
	}

	//배너 출력
	@Override
	public List<BannerVO> BannerView(HashMap<String, Integer> map) throws Exception {
		return sql.selectList(namespace + ".BannerView", map);
	}

	@Override
	public BannerVO BannerFileName(int bid) throws Exception {
		return null;
	}

}
