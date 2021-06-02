package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PackageVO;

@Repository
public class ShowPackageDAOImpl implements ShowPackageDAO {
	
	@Inject
	private SqlSession sql;
	private static final String namespace = "com.spring.ex.ShowPackageMapper";
	
	//북미,중남미,하와이 패키지 출력
	@Override
	public List<PackageVO> PackageView(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".ProductPackageView", map);
	}
	
	//대만,동남아,서남아 패키지 출력
	@Override
	public List<PackageVO> PackageView2(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".ProductPackageView2", map);
	}
	
	//중국,홍콩,러시아 패키지 출력
	@Override
	public List<PackageVO> PackageView3(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".ProductPackageView3", map);
	}
	
	//유럽,아프리카 패키지 출력
	@Override
	public List<PackageVO> PackageView4(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".ProductPackageView4", map);
	}
	
	//일본 패키지 출력
	@Override
	public List<PackageVO> PackageView5(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".ProductPackageView5", map);
	}
		
	//여행패키지 총 갯수
	@Override
	public int PackageTotalCount() throws Exception {
		return sql.selectOne(namespace + ".getProductPackageTotalCount");
	}
	
	//여행패키지 총 갯수
	@Override
	public int PackageTotalCount2() throws Exception {
		return sql.selectOne(namespace + ".getProductPackageTotalCount2");
	}
	
	//여행패키지 총 갯수
	@Override
	public int PackageTotalCount3() throws Exception {
		return sql.selectOne(namespace + ".getProductPackageTotalCount3");
	}
	
	//여행패키지 총 갯수
	@Override
	public int PackageTotalCount4() throws Exception {
		return sql.selectOne(namespace + ".getProductPackageTotalCount4");
	}
	
	//여행패키지 총 갯수
	@Override
	public int PackageTotalCount5() throws Exception {
		return sql.selectOne(namespace + ".getProductPackageTotalCount5");
	}
		
	
	//여행패키지 상세페이지 출력
	@Override
	public PackageVO ProductPackageDetail(int pid) throws Exception {
		return sql.selectOne(namespace + ".ProductPackageDetail", pid);
	}
	
	//패키지 예약 내역 등록
	@Override
	public int OrderWrite(OrderVO vo) throws Exception {
		return sql.insert(namespace + ".OrderWrite", vo);
	}
	
	//패키지 예약 보류 내역 등록
	@Override
	public int OrderWrite2(OrderVO vo) throws Exception {
		return sql.insert(namespace + ".OrderWrite2", vo);
	}
	
	//패키지 비회원 예약 내역 등록
	@Override
	public int OrderWrite3(OrderVO vo) throws Exception {
		return sql.insert(namespace + ".OrderWrite3", vo);
	}
	
	//비회원 패키지 내역 출력
	@Override
	public List<OrderVO> NonMemberView(HashMap<String, Object> map) throws Exception {
		return sql.selectList(namespace + ".NonMemberView", map);
	}
	
	//여행패키지 예약상태 수정
	@Override
	public int detailModify(OrderVO vo) throws Exception {
		return sql.update(namespace + ".detailModify", vo);
	}

}
