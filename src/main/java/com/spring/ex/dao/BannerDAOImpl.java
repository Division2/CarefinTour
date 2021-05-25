package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.BannerVO;

@Repository
public class BannerDAOImpl implements BannerDAO {
	@Inject
	private SqlSession sql;
	private static final String namespace = "com.spring.ex.BannerMapper";
	
	//배너 수정
	@Override
	public int BannerModify(Map<String, Object> map) throws Exception {
		return sql.update(namespace + ".BannerModify", map);
	}

	//관리자화면 배너 출력
	@Override
	public List<BannerVO> BannerView() throws Exception {
		return sql.selectList(namespace + ".BannerView");
	}

	@Override
	public BannerVO BannerFileName(int bid) throws Exception {
		return null;
	}

}
