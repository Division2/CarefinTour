package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.ex.dao.TravelReviewDAO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.ReplyVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public class TravelReviewServiceImpl implements TravelReviewService {
	
	@Inject
	private TravelReviewDAO dao;

	//여행 포토 작성
	@Override
	public void TravelPhotoWrite(TravelPhotoVO vo) throws Exception {
		dao.TravelPhotoWrite(vo);		
	}

	// 상품 수정
	@Override
	public void TravelPhotoModify(TravelPhotoVO vo) throws Exception {
		dao.TravelPhotoModify(vo);
	}

	//여행 포토 출력
	@Override
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map) throws Exception {
		return dao.TravelPhotoList(map);
	}

	//여행 포토 조회
	@Override
	public TravelPhotoVO TravelPhotoView(int prid) throws Exception {
		return dao.TravelPhotoView(prid);
	}
	
	//파일 조회
	@Override
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception {
		return dao.TravelPhotoSelectFileList(prid);
	}
	
	//여행 포토 총 갯수
	@Override
	public int TravelPhotoTotalCount() throws Exception {
		return dao.TravelPhotoTotalCount();
	}

	
	//여행 포토 삭제
	@Override
	public int TravelPhotoDelete(int prid) throws Exception {
		return dao.TravelPhotoDelete(prid);
	}

	//여행 포토 조회수 증가
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public void TravelPhotoBoardHit(int prid) throws Exception {
		dao.TravelPhotoBoardHit(prid);
	}
	
	//여행 포토 댓글 조회
	@Override
	public List<ReplyVO> TravelPhotoReplyView(HashMap<String, Integer> map) throws Exception {
		return dao.TravelPhotoReplyView(map);
	}
	
	//여행 포토 댓글 총 갯수
	@Override
	public int TravelPhotoReplyTotalCount(int prid) throws Exception {
		return dao.TravelPhotoReplyTotalCount(prid);
	}
	
	//여행 포토 댓글 작성
	@Override
	public int TravelPhotoReplyWrite(ReplyVO vo) throws Exception {
		return dao.TravelPhotoReplyWrite(vo);
	}
	
	//여행 포토 댓글 수정
	@Override
	public int TravelPhotoReplyModify(ReplyVO vo) throws Exception {
		return dao.TravelPhotoReplyModify(vo);
	}
	
	//여행 포토 댓글 삭제
	@Override
	public int TravelPhotoReplyDelete(int prrid) throws Exception {
		return dao.TravelPhotoReplyDelete(prrid);
	}


	//여행 포토 내 게시글 리스트
	@Override
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map) throws Exception {
		return dao.TravelPhotoMyList(map);
	}
	
	//여행 포토 내 게시글 총 갯수
	@Override
	public int MyPhotoTotalCount(MemberVO vo) throws Exception {
		return dao.MyPhotoTotalCount(vo);
	}
	
	//탑앵글러 등록
	@Override
	public void TopAnglerWrite(TopAnlgerVO vo) throws Exception {
		dao.TopAnglerWrite(vo);
	}

	//탑 앵글러 출력
	@Override
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception {
		return dao.TopAnglerView(map);
	}

	//탑 앵글러 총 갯수
	@Override
	public int TopAnglerTotalCount() throws Exception {
		return dao.TopAnglerTotalCount();
	}
}