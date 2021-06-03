package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MainPageDAO;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.SexVO;
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
		public List<SexVO> LineReview() throws Exception {
			return dao.LineReview();
		}
}