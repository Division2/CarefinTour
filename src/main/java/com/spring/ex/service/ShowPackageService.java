package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PackageVO;

@Service
public interface ShowPackageService {

	//북미,중남미,하와이 패키지 출력
	public List<PackageVO> PackageView(HashMap<String, Object> map) throws Exception;

	//대만,동남아,서남아 패키지 출력
	public List<PackageVO> PackageView2(HashMap<String, Object> map) throws Exception;

	//중국,홍콩,러시아 패키지 출력
	public List<PackageVO> PackageView3(HashMap<String, Object> map) throws Exception;

	//유럽,아프리카 패키지 출력
	public List<PackageVO> PackageView4(HashMap<String, Object> map) throws Exception;

	//일본 패키지 출력
	public List<PackageVO> PackageView5(HashMap<String, Object> map) throws Exception;

	//허니문 패키지 출력
	public List<PackageVO> PackageView6(HashMap<String, Object> map) throws Exception;

	//낚시 패키지 출력
	public List<PackageVO> PackageView7(HashMap<String, Object> map) throws Exception;

	//골프 패키지 출력
	public List<PackageVO> PackageView8(HashMap<String, Object> map) throws Exception;

	//북미,중남미,하와이 패키지 총 갯수
	public int PackageTotalCount() throws Exception;

	//대만,동남아,서남아 패키지 출력
	public int PackageTotalCount2() throws Exception;

	//중국,홍콩,러시아 패키지 출력
	public int PackageTotalCount3() throws Exception;

	//유럽,아프리카 패키지 출력
	public int PackageTotalCount4() throws Exception;

	//일본 패키지 출력
	public int PackageTotalCount5() throws Exception;

	//허니문 패키지 출력
	public int PackageTotalCount6() throws Exception;

	//낚시 패키지 출력
	public int PackageTotalCount7() throws Exception;

	//골프 패키지 출력
	public int PackageTotalCount8() throws Exception;

	//여행패키지 상세페이지 출력
	public PackageVO ProductPackageDetail(int pid) throws Exception;

	//여행패키지 예약 문의 등록
	public int OrderWrite(OrderVO vo) throws Exception;

	//여행패키지 예약 문의 보류
	public int OrderWrite2(OrderVO vo) throws Exception;

	//여행패키지 예약 비회원 등록
	public int OrderWrite3(OrderVO vo) throws Exception;

	//여행패키지 예약 상태 수정
	public int detailModify(OrderVO vo) throws Exception;
}