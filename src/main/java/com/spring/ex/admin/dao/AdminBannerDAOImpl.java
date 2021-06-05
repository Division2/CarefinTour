package com.spring.ex.admin.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.BannerVO;

@Repository
public class AdminBannerDAOImpl implements AdminBannerDAO {
	
	@Inject
	private SqlSession sql;
	private static final String namespace = "com.spring.ex.BannerMapper";
	
	//배너 수정
	@Override
	public void BannerModify(BannerVO vo) throws Exception {
		sql.update(namespace + ".BannerModify", vo);
	}

	//관리자화면 배너 출력
	@Override
	public List<BannerVO> BannerView() throws Exception {
		return sql.selectList(namespace + ".BannerView");
	}

	//관리자 배너 수정페이지 출력
	@Override
	public BannerVO BannerModifyView(int bid) throws Exception {
		return sql.selectOne(namespace + ".BannerModifyView", bid);
	}
	
	//사용자 화면에서 배너 출력
	@Override
	public BannerVO BannerRespectivelyView(int bid) throws Exception {
		return sql.selectOne(namespace + ".BannerRespectivelyView", bid);
	}
}