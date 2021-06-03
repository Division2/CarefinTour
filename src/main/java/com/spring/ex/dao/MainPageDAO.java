package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.SexVO;
import com.spring.ex.vo.TravelPhotoVO;

@Repository
public interface MainPageDAO {
	
	//여행 포토 출력
	public List<TravelPhotoVO> NewTravelPhotoList() throws Exception;
	
	//메인 패키지 추천 미주
	public List<PackageVO> UsaPackageViewList() throws Exception;
	
	//메인 패키지 추천 미주
	public List<PackageVO> ChinaPackageViewList() throws Exception;
	
	//메인 패키지 추천 미주
	public List<PackageVO> MylPackageViewList() throws Exception;
	
	//메인 패키지 추천 일본
	public List<PackageVO> JapanPackageViewList() throws Exception;
	
	//메인 패키지 추천 일본
	public List<PackageVO> SurfingPackageViewList() throws Exception;
	
	//메인 패키지 추천 일본
	public List<PackageVO> EuPackageViewList() throws Exception;
	
	//메인 한줄평 리뷰
<<<<<<< HEAD
	public List<SexVO> LineReview() throws Exception;
=======
	public List<TravelPhotoVO> LineReview() throws Exception;
	
	//메인 여행패키지 상품 검색
	public List<PackageVO> MainProductPackageSearch(HashMap<String, Object> map) throws Exception;
	
	//메인 여행패키지 상품 검색 총 갯수
	public int getMainProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
>>>>>>> branch 'master' of https://github.com/Division2/CarefinTour
}