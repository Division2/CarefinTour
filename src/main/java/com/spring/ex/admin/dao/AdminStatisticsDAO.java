package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.TravelPhotoVO;
import com.spring.ex.vo.VisitVO;

@Repository
public interface AdminStatisticsDAO {
	
	//방문자 전체 출력
	public List<VisitVO> visitorAllView(HashMap<String, Integer> map) throws Exception;
	
	//방문자 총 갯수
	public int visitorTotalCount() throws Exception;
	
	//방문자 검색 출력
	public List<VisitVO> visitorSearchView(HashMap<String, Object> map) throws Exception;
	
	//방문자 검색 총 갯수
	public int visitorSearchTotalCount(HashMap<String, String> totalMap) throws Exception;
	
	//게시물 작성 수(공지사항 기본 출력)
	public List<NoticeBoardVO> NoticeBoardStatisticsView() throws Exception;
	
	//게시물 작성 수(1:1 문의 기본 출력)
	public List<InquiryVO> InquiryBoardStatisticsView() throws Exception;
	
	//게시물 작성 수(여행 포토 기본 출력)
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsView() throws Exception;
	
	//게시물 작성 수(공지사항 상세 출력)
	public List<NoticeBoardVO> NoticeBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception;
	
	//게시물 작성 수(1:1 문의 상세 출력)
	public List<InquiryVO> InquiryBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception;
	
	//게시물 작성 수(여행 포토 상세 출력)
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception;
	
	//게시물 작성 수(공지사항 상세 총 갯수)
	public int NoticeBoardStatisticsTotalCount() throws Exception;
	
	//게시물 작성 수(1:1 문의 상세 총 갯수)
	public int InquiryBoardStatisticsTotalCount() throws Exception;
	
	//게시물 작성 수(여행 포토 상세 총 갯수)
	public int TravelPhotoBoardStatisticsTotalCount() throws Exception;
	
	//게시물 작성 수(공지사항 상세 검색 출력)
	public List<NoticeBoardVO> NoticeBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception;
	
	//게시물 작성 수(1:1 문의 상세 검색 출력)
	public List<InquiryVO> InquiryBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception;
	
	//게시물 작성 수(여행 포토 상세 검색 출력)
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception;
	
	//게시물 작성 수(공지사항 상세 검색 총 갯수)
	public int NoticeBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception;
	
	//게시물 작성 수(1:1 문의 상세 검색 총 갯수)
	public int InquiryBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception;
	
	//게시물 작성 수(여행 포토 상세 검색 총 갯수)
	public int TravelPhotoBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception;
	
	//공지사항 상세 선택 삭제
	public void NoticeSelectDelete (String nId) throws Exception;
	
	//1:1 문의 상세 선택 삭제
	public void InquirySelectDelete (String iId) throws Exception;
	
	//여행 포토 상세 선택 삭제
	public void TravelPhotoSelectDelete (String prId) throws Exception;
	
	//기간별 매출 통계 출력
	public List<OrderVO> RevenueByPeriod(HashMap<String, Integer> map) throws Exception;
	
	//기간별 매출 총 갯수
	public int TotalOrderCount() throws Exception;
	
	//기간별 매출 검색 출력
	public List<OrderVO> PeriodSearchView(HashMap<String, Object> map) throws Exception;
	
	//기간별 매출 검색 총 갯수
	public int getPriodSearchTotalCount(HashMap<String, String> totalMap) throws Exception;
}