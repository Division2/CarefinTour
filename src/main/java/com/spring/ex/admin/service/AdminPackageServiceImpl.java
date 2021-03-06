package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminPackageDAO;
import com.spring.ex.vo.PackageVO;

@Service
public class AdminPackageServiceImpl implements AdminPackageService {
	
	@Inject
	private AdminPackageDAO dao;
	
	//관리자관련 페이지 시작 
	//게시물 작성
	@Override
	public void PackageWrite(PackageVO packageVo) throws Exception {
		dao.PackageWrite(packageVo); 
	}

	//여행패키지 출력
	@Override
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception {
		return dao.AdminPackageView(map);
	}

	//여행패키지 총 갯수
	@Override
	public int AdminPackageTotalCount() throws Exception {
		return dao.AdminPackageTotalCount();
	}
	
	//여행패키지 상세페이지 출력
	@Override
	public PackageVO ProductPackageDetail(int pid) throws Exception {
		return dao.ProductPackageDetail(pid);
	}
	
	//여행패키지 삭제
	@Override
	public void ProductPackageDelete(int pid) throws Exception {
		dao.ProductPackageDelete(pid);
	}
	
	//여행패키지 파일이름 검색 - 파일 삭제하려고 사용
	@Override
	public String ProductPackageFileName(int pid) throws Exception {
		return dao.ProductPackageFileName(pid);
	}

	//여행패키지 수정
	@Override
	public void ProductPackageModify(PackageVO vo) throws Exception {
		dao.ProductPackageModify(vo);
	}

	//여행패키지 상품 검색
	public List<PackageVO> ProductPackageSearch(HashMap<String, Object> map) throws Exception {
		return dao.ProductPackageSearch(map);
	}
	
	//여행패키지 상품 검색 총 갯수
	public int getProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return dao.getProductPackageSearchTotalCount(searchMap);
	}
}