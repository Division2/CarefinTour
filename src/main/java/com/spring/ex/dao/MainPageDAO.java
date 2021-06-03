package com.spring.ex.dao;

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
	public List<SexVO> LineReview() throws Exception;
}