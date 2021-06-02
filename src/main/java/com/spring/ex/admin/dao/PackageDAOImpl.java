package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.PackageVO;

@Repository
public class PackageDAOImpl implements PackageDAO {
	@Inject
	private SqlSession sql;
	private static final String namespace = "com.spring.ex.PackageMapper";
	
	//관리자관련 페이지 시작 
	// 패키지 작성
	@Override
	public void PackageWrite(PackageVO vo) throws Exception {
		sql.insert(namespace + ".PackageWrite", vo);
	}

	//여행패키지 출력
	@Override
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception {
		return sql.selectList(namespace + ".ProductPackageView", map);
	}
	
	//여행패키지 총 갯수
	@Override
	public int AdminPackageTotalCount() throws Exception {
		return sql.selectOne(namespace + ".getProductPackageTotalCount");
	}
	
	//여행패키지 상세페이지 출력
	@Override
	public PackageVO ProductPackageDetail(int pid) throws Exception {
		return sql.selectOne(namespace + ".ProductPackageDetail", pid);
	}
	
	//여행패키지 삭제
	@Override
	public void ProductPackageDelete(int pid) throws Exception {
		sql.selectOne(namespace + ".ProductPackageDelete", pid);
	}

	//여행패키지 파일 이름 검색 - 파일 삭제하려고 사용
	@Override
	public String ProductPackageFileName(int pid) throws Exception {
		return sql.selectOne(namespace + ".ProductPackageFileName", pid);
	}

	//여행패키지 수정
	@Override
	public void ProductPackageModify(PackageVO vo) throws Exception {
		sql.update(namespace + ".ProductPackageModify", vo);
	}

	//여행패키지 상품 검색
	public List<PackageVO> ProductPackageSearch(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".ProductPackageSearch", map);
	}
	
	//여행패키지 상품 검색 총 갯수
	public int getProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return sql.selectOne(namespace + ".getProductPackageSearchTotalCount", searchMap);
	}

	
	//메인관련 페이지 시작
	//메인 여행패키지 상품 검색
	@Override
	public List<PackageVO> MainProductPackageSearch(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".MainProductPackageSearch", map);
	}

	//메인 여행패키지 상품 검색 총 갯수
	@Override
	public int getMainProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return sql.selectOne(namespace + ".getMainProductPackageSearchTotalCount", searchMap);
	}
	
	
}
