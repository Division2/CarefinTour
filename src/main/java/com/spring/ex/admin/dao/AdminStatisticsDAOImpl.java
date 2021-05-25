package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.TravelPhotoVO;
import com.spring.ex.vo.VisitVO;

@Repository
public class AdminStatisticsDAOImpl implements AdminStatisticsDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminStatisticsMapper";

	//방문자 전체 출력
	@Override
	public List<VisitVO> visitorAllView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".VisitorAllView", map);
	}

	//방문자 총 갯수
	@Override
	public int visitorTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getVisitTotalCount");
	}

	//방문자 검색 출력
	@Override
	public List<VisitVO> visitorSearchView(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".VisitorSearchView", map);
	}

	//방문자 검색 총 갯수
	@Override
	public int visitorSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return sqlSession.selectOne(namespace + ".getVisitSearchTotalCount", totalMap);
	}
	
	//게시물 작성 수(공지사항 기본 출력)
	@Override
	public List<NoticeBoardVO> NoticeBoardStatisticsView() throws Exception {
		return sqlSession.selectList(namespace + ".NoticeBoardStatisticsView");
	}

	//게시물 작성 수(1:1 문의 기본 출력)
	@Override
	public List<InquiryVO> InquiryBoardStatisticsView() throws Exception {
		return sqlSession.selectList(namespace + ".InquiryBoardStatisticsView");
	}

	//게시물 작성 수(여행 포토 기본 출력)
	@Override
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsView() throws Exception {
		return sqlSession.selectList(namespace + ".TravelPhotoBoardStatisticsView");
	}

	//게시물 작성 수(공지사항 상세 출력)
	@Override
	public List<NoticeBoardVO> NoticeBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".NoticeBoardStatisticsDetailView", map);
	}

	//게시물 작성 수(1:1 문의 상세 출력)
	@Override
	public List<InquiryVO> InquiryBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".InquiryBoardStatisticsDetailView", map);
	}

	//게시물 작성 수(여행 포토 상세 출력)
	@Override
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsDetailView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".TravelPhotoBoardStatisticsDetailView", map);
	}

	//게시물 작성 수(공지사항 상세 총 갯수)
	@Override
	public int NoticeBoardStatisticsTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getNoticeBoardStatisticsTotalCount");
	}

	//게시물 작성 수(1:1 문의 상세 총 갯수)
	@Override
	public int InquiryBoardStatisticsTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getInquiryBoardStatisticsTotalCount");
	}

	//게시물 작성 수(여행 포토 상세 총 갯수)
	@Override
	public int TravelPhotoBoardStatisticsTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTravelPhotoBoardStatisticsTotalCount");
	}

	//게시물 작성 수(공지사항 상세 검색 출력)
	@Override
	public List<NoticeBoardVO> NoticeBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".NoticeBoardStatisticsSearchDetailView", map);
	}
	
	//게시물 작성 수(1:1 문의 상세 검색 출력)
	@Override
	public List<InquiryVO> InquiryBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".InquiryBoardStatisticsSearchDetailView", map);
	}

	//게시물 작성 수(여행 포토 상세 검색 출력)
	@Override
	public List<TravelPhotoVO> TravelPhotoBoardStatisticsSearchDetailView(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".TravelPhotoBoardStatisticsSearchDetailView", map);
	}

	//게시물 작성 수(공지사항 상세 검색 총 갯수)
	@Override
	public int NoticeBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return sqlSession.selectOne(namespace + ".getNoticeBoardStatisticsSearchTotalCount", totalMap);
	}

	//게시물 작성 수(1:1 문의 상세 검색 총 갯수)
	@Override
	public int InquiryBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return sqlSession.selectOne(namespace + ".getInquiryBoardStatisticsSearchTotalCount", totalMap);
	}

	//게시물 작성 수(여행 포토 상세 검색 총 갯수)
	@Override
	public int TravelPhotoBoardStatisticsSearchTotalCount(HashMap<String, String> totalMap) throws Exception {
		return sqlSession.selectOne(namespace + ".getTravelPhotoBoardStatisticsSearchTotalCount", totalMap);
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