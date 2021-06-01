package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.TravelPhotoVO;

@Repository
public class MainPageDAOImpl implements MainPageDAO {
	@Inject SqlSession sqlSession;
	private static String namespace = "com.spring.ex.MainPageMapper";
	
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
}