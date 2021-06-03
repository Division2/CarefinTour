package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MainPageDAO;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public class MainPageServiceImpl implements MainPageService {
	@Inject MainPageDAO dao;
	
	//여행 포토 출력
	@Override
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception {
		return dao.NewTravelPhotoList();
	}
	
	//메인 패키지 추천 미주
	public List<PackageVO> UsaPackageViewList() throws Exception {
		return dao.UsaPackageViewList();
	}
	
	//메인 패키지 추천 중국
	public List<PackageVO> ChinaPackageViewList() throws Exception {
		return dao.ChinaPackageViewList();
	}
	
	//메인 패키지 추천 동남아
	public List<PackageVO> MylPackageViewList() throws Exception {
		return dao.MylPackageViewList();
	}
	
	//메인 패키지 추천 일본
	public List<PackageVO> JapanPackageViewList() throws Exception {
		return dao.JapanPackageViewList();
	}
	
	//메인 패키지 추천 서핑
	public List<PackageVO> SurfingPackageViewList() throws Exception {
		return dao.SurfingPackageViewList();
	}
	
	//메인 패키지 추천 유럽
	public List<PackageVO> EuPackageViewList() throws Exception {
		return dao.EuPackageViewList();
	}
	
	//메인 한줄평 리뷰
	public List<TravelPhotoVO> LineReview() throws Exception {
		return dao.LineReview();
	}
		
	//메인 여행패키지 지역 날짜 테마로 상품 검색
	@Override
	public List<PackageVO> MainProductPackageSearch(HashMap<String, Object> map) throws Exception {
		return dao.MainProductPackageSearch(map);
	}
	
	//메인 여행패키지 지역 날짜 테마로 상품 검색 총 갯수
	@Override
	public int getMainProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return dao.getMainProductPackageSearchTotalCount(searchMap);
	}
	
	//메인 여행패키지 이름으로 상품 검색
	@Override
	public List<PackageVO> MainNameProductPackageSearch(HashMap<String, Object> map) throws Exception {
		return dao.MainNameProductPackageSearch(map);
	}
	
	//메인 여행패키지 이름으로 상품 검색 총 갯수
	@Override
	public int getMainNameProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return dao.getMainNameProductPackageSearchTotalCount(searchMap);
	}
}