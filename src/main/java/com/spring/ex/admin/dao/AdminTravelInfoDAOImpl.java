package com.spring.ex.admin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.SuppliesInfoVO;
import com.spring.ex.vo.VisaInfoVO;

@Repository
public class AdminTravelInfoDAOImpl implements AdminTravelInfoDAO {

	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminTravelInfoMapper";
	
	//비자 정보 등록
	@Override
	public int visaInfoWrite(VisaInfoVO vo) throws Exception {
		return sqlSession.insert(namespace + ".VisaInfoWrite", vo);
	}
	
	//비자 정보 수정
	@Override
	public int visaInfoModify(VisaInfoVO vo) throws Exception {
		return sqlSession.update(namespace + ".VisaInfoModify", vo);
	}

	//비자 정보 조회
	@Override
	public VisaInfoVO visaInfoView() throws Exception {
		return sqlSession.selectOne(namespace + ".VisaInfoView");
	}
	
	//여행준비물 등록
	@Override
	public int suppliesInfoWrite(SuppliesInfoVO vo) throws Exception {
		return sqlSession.insert(namespace + ".SuppliesInfoWrite", vo);
	}
	
	//여행준비물 수정
	@Override
	public int suppliesInfoModify(SuppliesInfoVO vo) throws Exception {
		return sqlSession.update(namespace + ".SuppliesInfoModify", vo);
	}

	//여행준비물 조회
	@Override
	public SuppliesInfoVO suppliesInfoView() throws Exception {
		return sqlSession.selectOne(namespace + ".SuppliesInfoView");
	}
}