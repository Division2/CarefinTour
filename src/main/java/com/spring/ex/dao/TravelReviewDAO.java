package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.ReplyVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

public interface TravelReviewDAO {
	
	//여행 포토 작성
	public void TravelPhotoWrite(TravelPhotoVO vo) throws Exception;
	
	//여행 수정
	public void TravelPhotoModify(TravelPhotoVO vo) throws Exception;
		
	//여행 포토 출력
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map) throws Exception;
	
	//여행 포토 조회
	public TravelPhotoVO TravelPhotoView(int prid) throws Exception;
	
	//여행 포토 총 갯수
	public int TravelPhotoTotalCount() throws Exception;
	
	//첨부 파일 조회
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception;
	
	//여행 포토 삭제
	public int TravelPhotoDelete(int prid) throws Exception;
	
	//여행 포토 조회수 증가
	public void TravelPhotoBoardHit(int prid) throws Exception;
	
	//여행 포토 댓글 조회
	public List<ReplyVO> TravelPhotoReplyView(HashMap<String, Integer> map) throws Exception;
	
	//여행 포토 댓글 총 갯수
	public int TravelPhotoReplyTotalCount(int prid) throws Exception;
	
	//여행 포토 댓글 작성
	public int TravelPhotoReplyWrite(ReplyVO vo) throws Exception;
	
	//여행 포토 댓글 수정
	public int TravelPhotoReplyModify(ReplyVO vo) throws Exception;
	
	//여행 포토 댓글 삭제
	public int TravelPhotoReplyDelete(int prrid) throws Exception;
	
	//여행 포토 내 게시글 리스트
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map) throws Exception;
	
	//여행 포토 내 게시글 총 갯수
	public int MyPhotoTotalCount(MemberVO vo) throws Exception;
	
	//탑 앵글러 출력
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception;

	//탑 앵글러 총 갯수
	public int TopAnglerTotalCount() throws Exception;
}