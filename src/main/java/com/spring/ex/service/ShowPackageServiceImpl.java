package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.ShowPackageDAO;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PackageVO;

@Service
public class ShowPackageServiceImpl implements ShowPackageService {
	@Inject
	private ShowPackageDAO dao;
	
	//북미,중남미,하와이 패키지 출력
	@Override
	public List<PackageVO> PackageView(HashMap<String, Object> map) throws Exception {
		return dao.PackageView(map);
	}
	
	//대만,동남아,서남아 패키지 출력
	@Override
	public List<PackageVO> PackageView2(HashMap<String, Object> map) throws Exception {
		return dao.PackageView2(map);
	}
	
	//중국,홍콩,러시아 패키지 출력
	@Override
	public List<PackageVO> PackageView3(HashMap<String, Object> map) throws Exception {
		return dao.PackageView3(map);
	}
	
	//유럽,아프리카 패키지 출력
	@Override
	public List<PackageVO> PackageView4(HashMap<String, Object> map) throws Exception {
		return dao.PackageView4(map);
	}
	
	//일본 패키지 출력
	@Override
	public List<PackageVO> PackageView5(HashMap<String, Object> map) throws Exception {
		return dao.PackageView5(map);
	}
	
	//허니문 패키지 출력
	@Override
	public List<PackageVO> PackageView6(HashMap<String, Object> map) throws Exception {
		return dao.PackageView6(map);
	}
	
	//낚시 패키지 출력
	@Override
	public List<PackageVO> PackageView7(HashMap<String, Object> map) throws Exception {
		return dao.PackageView7(map);
	}
	
	//골프 패키지 출력
	@Override
	public List<PackageVO> PackageView8(HashMap<String, Object> map) throws Exception {
		return dao.PackageView8(map);
	}

	//북미,중남미,하와이 패키지 출력
	@Override
	public int PackageTotalCount() throws Exception {
		return dao.PackageTotalCount();
	}
	
	//대만,동남아,서남아 패키지 출력
	@Override
	public int PackageTotalCount2() throws Exception {
		return dao.PackageTotalCount2();
	}
	
	//중국,홍콩,러시아 패키지 출력
	@Override
	public int PackageTotalCount3() throws Exception {
		return dao.PackageTotalCount3();
	}
	
	//유럽,아프리카 패키지 출력
	@Override
	public int PackageTotalCount4() throws Exception {
		return dao.PackageTotalCount4();
	}
	
	//일본 패키지 출력
	@Override
	public int PackageTotalCount5() throws Exception {
		return dao.PackageTotalCount5();
	}

	//허니문 패키지 출력
	@Override
	public int PackageTotalCount6() throws Exception {
		return dao.PackageTotalCount6();
	}
	
	//낚시 패키지 출력
	@Override
	public int PackageTotalCount7() throws Exception {
		return dao.PackageTotalCount7();
	}
	
	//골프 패키지 출력
	@Override
	public int PackageTotalCount8() throws Exception {
		return dao.PackageTotalCount8();
	}

	//여행패키지 상세페이지 출력
	@Override
	public PackageVO ProductPackageDetail(int pid) throws Exception {
		return dao.ProductPackageDetail(pid);
	}
	
	//여행패키지 예약내역 등록
	@Override
	public int OrderWrite(OrderVO vo) throws Exception {
		return dao.OrderWrite(vo);
	}
	
	//여행패키지 예약보류 등록
	@Override
	public int OrderWrite2(OrderVO vo) throws Exception {
		return dao.OrderWrite2(vo);
	}
	
	//여행패키지 예약비회원 등록
	@Override
	public int OrderWrite3(OrderVO vo) throws Exception {
		return dao.OrderWrite3(vo);
	}
	
	//비회원 예약 패키지 출력
	@Override
	public OrderVO NonMemberView(OrderVO vo) throws Exception {
		return dao.NonMemberView(vo);
	}
	
	//여행피키지 예약내역 상태변경
	@Override
	public int detailModify(OrderVO vo) throws Exception {
		return dao.detailModify(vo);
	}
}
