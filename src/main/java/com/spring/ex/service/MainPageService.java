package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.SexVO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public interface MainPageService {

	//여행 포토 출력
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception;
	
	//메인 패키지 추천 미주
	public List<PackageVO> UsaPackageViewList() throws Exception;
	
	//메인 패키지 추천 중국
	public List<PackageVO> ChinaPackageViewList() throws Exception;
	
	//메인 패키지 추천 동남아
	public List<PackageVO> MylPackageViewList() throws Exception;
	
	//메인 패키지 추천 동남아
	public List<PackageVO> JapanPackageViewList() throws Exception;
	
	//메인 패키지 추천 서핑
	public List<PackageVO> SurfingPackageViewList() throws Exception;
	
	//메인 패키지 추천 서핑
	public List<PackageVO> EuPackageViewList() throws Exception;
	
	//메인 한줄평 리뷰
<<<<<<< HEAD
	public List<SexVO> LineReview() throws Exception;
=======
	public List<TravelPhotoVO> LineReview() throws Exception;
	
	//메인 여행패키지 지역 날짜 테마로 상품 검색
	public List<PackageVO> MainProductPackageSearch(HashMap<String, Object> map) throws Exception;
	
	//메인 여행패키지 지역 날짜 테마로 상품 검색 총 갯수
	public int getMainProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
<<<<<<< HEAD
	
	//메인 여행패키지 이름으로 상품 검색
	public List<PackageVO> MainNameProductPackageSearch(HashMap<String, Object> map) throws Exception;
	
	//메인 여행패키지 이름으로 상품 검색 총 갯수
	public int getMainNameProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
=======
>>>>>>> branch 'master' of https://github.com/Division2/CarefinTour
>>>>>>> branch 'master' of https://github.com/Division2/CarefinTour
}