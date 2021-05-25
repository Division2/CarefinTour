package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminStatisticsDAO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.TravelPhotoVO;
import com.spring.ex.vo.VisitVO;

@Service
public class AdminStatisticsServiceImpl implements AdminStatisticsService {

	@Inject private AdminStatisticsDAO dao;
	
	//방문자 전체 출력
	@Override
	public List<VisitVO> visitorAllView(HashMap<String, Integer> map) throws Exception {
		return dao.visitorAllView(map);
	}

	//방문자 총 갯수
	@Override
	public int visitorTotalCount() throws Exception {
		return dao.visitorTotalCount();
	}
	
	//방문자 검색 출력
	@Override
	public List<VisitVO> visitorSearchView(HashMap<String, Object> map) throws Exception {
		return dao.visitorSearchView(map);
	}

	//방문자 검색 총 갯수
	@Override
	public int visitorSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return dao.visitorSearchTotalCount(totalMap);
	}

	//게시물 작성 수(공지사항 기본 출력)
	@Override
	public List<NoticeBoardVO> NoticeBoardStatisticsView() throws Exception {
		return dao.NoticeBoardStatisticsView();
	}

	//게시물 작성 수(1:1 문의 기본 출력)
	@Override
	public List<InquiryVO> InquiryBoardStatisticsView() throws Exception {
		return dao.InquiryBoardStatisticsView();
	}

	//게시물 작성 수(여행 포토 기본 출력)
	@Override
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsView() throws Exception {
		return dao.TravelPhotoBoardStatisticsView();
	}

	//게시물 작성 수(공지사항 상세 출력)
	@Override
	public List<NoticeBoardVO> NoticeBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception {
		return dao.NoticeBoardStatisticsDetailView(map);
	}

	//게시물 작성 수(1:1 문의 상세 출력)
	@Override
	public List<InquiryVO> InquiryBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception {
		return dao.InquiryBoardStatisticsDetailView(map);
	}

	//게시물 작성 수(여행 포토 상세 출력)
	@Override
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception {
		return dao.TravelPhotoBoardStatisticsDetailView(map);
	}

	//게시물 작성 수(공지사항 상세 총 갯수)
	@Override
	public int NoticeBoardStatisticsTotalCount() throws Exception {
		return dao.NoticeBoardStatisticsTotalCount();
	}

	//게시물 작성 수(1:1 문의 상세 총 갯수)
	@Override
	public int InquiryBoardStatisticsTotalCount() throws Exception {
		return dao.InquiryBoardStatisticsTotalCount();
	}

	//게시물 작성 수(여행 포토 상세 총 갯수)
	@Override
	public int TravelPhotoBoardStatisticsTotalCount() throws Exception {
		return dao.TravelPhotoBoardStatisticsTotalCount();
	}

	//게시물 작성 수(공지사항 상세 검색 출력)
	@Override
	public List<NoticeBoardVO> NoticeBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception {
		return dao.NoticeBoardStatisticsSearchDetailView(map);
	}
	
	//게시물 작성 수(1:1 문의 상세 검색 출력)
	@Override
	public List<InquiryVO> InquiryBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception {
		return dao.InquiryBoardStatisticsSearchDetailView(map);
	}

	//게시물 작성 수(여행 포토 상세 검색 출력)
	@Override
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception {
		return dao.TravelPhotoBoardStatisticsSearchDetailView(map);
	}

	//게시물 작성 수(공지사항 상세 검색 총 갯수)
	@Override
	public int NoticeBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return dao.NoticeBoardStatisticsSearchTotalCount(totalMap);
	}

	//게시물 작성 수(1:1 문의 상세 검색 총 갯수)
	@Override
	public int InquiryBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return dao.InquiryBoardStatisticsSearchTotalCount(totalMap);
	}

	//게시물 작성 수(여행 포토 상세 검색 총 갯수)
	@Override
	public int TravelPhotoBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return dao.TravelPhotoBoardStatisticsSearchTotalCount(totalMap);
	}

	@Override
	public void NoticeSelectDelete(String nId) throws Exception {
		
	}

	@Override
	public void InquirySelectDelete(String iId) throws Exception {
		
	}

	@Override
	public void TravelPhotoSelectDelete(String prId) throws Exception {
		
	}
}