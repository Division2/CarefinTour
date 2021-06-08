package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.SexVO;
import com.spring.ex.vo.TravelPhotoVO;

@Repository
public class MainPageDAOImpl implements MainPageDAO {
	@Inject SqlSession sqlSession;
	private static String namespace = "com.spring.ex.MainPageMapper";
	private static final String namespace2 = "com.spring.ex.PackageMapper";
	//여행 포토 출력
	@Override
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception {
		return sqlSession.selectList(namespace + ".NewTravelPhotoList");
	}
	
	//메인 패키지 추천 미주
	@Override
	public List<PackageVO> UsaPackageViewList() throws Exception {
		return sqlSession.selectList(namespace + ".UsaPackageViewList");
	}
	//메인 패키지 추천 중국
	@Override
	public List<PackageVO> ChinaPackageViewList() throws Exception {
		return sqlSession.selectList(namespace + ".ChinaPackageViewList");
	}
	//메인 패키지 추천 동남아
	@Override
	public List<PackageVO> MylPackageViewList() throws Exception {
		return sqlSession.selectList(namespace + ".MylPackageViewList");
	}
	//메인 패키지 추천 일본
	@Override
	public List<PackageVO> JapanPackageViewList() throws Exception {
		return sqlSession.selectList(namespace + ".JapanPackageViewList");
	}	
	//메인 패키지 추천 서핑
	@Override
	public List<PackageVO> SurfingPackageViewList() throws Exception {
		return sqlSession.selectList(namespace + ".SurfingPackageViewList");
	}	
	//메인 패키지 추천 유럽
	@Override
	public List<PackageVO> EuPackageViewList() throws Exception {
		return sqlSession.selectList(namespace + ".EuPackageViewList");
	}	
	//메인 한줄평 리뷰
	@Override
	public List<SexVO> LineReview() throws Exception {
		return sqlSession.selectList(namespace + ".LineReview");
	}

	//메인 여행패키지 지역 날짜 테마로 상품 검색
	@Override
	public List<PackageVO> MainProductPackageSearch(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace2 + ".MainProductPackageSearch", map);
	}

	//메인 여행패키지 지역 날짜 테마로 상품 검색 총 갯수
	@Override
	public int getMainProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return sqlSession.selectOne(namespace2 + ".getMainProductPackageSearchTotalCount", searchMap);
	}
	
	//메인 여행패키지 이름으로 상품 검색
	@Override
	public List<PackageVO> MainNameProductPackageSearch(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace2 + ".MainNameProductPackageSearch", map);
	}
	
	//메인 여행패키지 이름으로 상품 검색 총 갯수
	@Override
	public int getMainNameProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return sqlSession.selectOne(namespace2 + ".getMainNameProductPackageSearchTotalCount", searchMap);
	}
}