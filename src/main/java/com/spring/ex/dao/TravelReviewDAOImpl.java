package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.ReplyVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Repository
public class TravelReviewDAOImpl implements TravelReviewDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static String namespace = "com.spring.ex.TravelReviewMapper";
	
	//여행 포토 작성
	@Override
	public int TravelPhotoWrite(Map<String, Object> map) throws Exception {
		return sqlSession.insert(namespace + ".TravelPhotoWrite", map);
	}
	
	//여행 포토 출력
	@Override
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".TravelPhotoList", map);
	}
	
	//여행 포토 조회
	@Override
	public TravelPhotoVO TravelPhotoView(int prid) throws Exception {
		return sqlSession.selectOne(namespace + ".TravelPhotoView", prid);
	}
	
	//여행 포토 총 갯수
	@Override
	public int TravelPhotoTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTravelPhotoTotalCount");
	}
	
	//여행 포토 수정(사진)
	@Override
	public int TravelPhotoUpdateFile(Map<String, Object> map) throws Exception {
		return sqlSession.update(namespace + ".TravelPhotoUpdateFile", map);
	}
	
	//여행 포토 수정(내용)
	@Override
	public void TravelPhotoModify(TravelPhotoVO travelPhotoVO) throws Exception {
		sqlSession.update(namespace + ".TravelPhotoUpdate", travelPhotoVO);
	}
	
	//여행 포토 삭제
	@Override
	public int TravelPhotoDelete(int prid) throws Exception {
		return sqlSession.delete(namespace + ".TravelPhotoDelete", prid);
	}
	
	//여행 포토 조회수 증가
	@Override
	public void TravelPhotoBoardHit(int prid) throws Exception {
		sqlSession.update(namespace  + ".TravelPhotoBoardHit", prid);
	}
	
	//여행 포토 댓글 조회
	@Override
	public List<ReplyVO> TravelPhotoReplyView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".TravelPhotoReplyView", map);
	}
	
	//여행 포토 댓글 총 갯수
	@Override
	public int TravelPhotoReplyTotalCount(int prid) throws Exception {
		return sqlSession.selectOne(namespace + ".getTravelPhotoReplyTotalCount", prid);
	}
	
	//여행 포토 댓글 작성
	@Override
	public int TravelPhotoReplyWrite(ReplyVO vo) throws Exception {
		return sqlSession.insert(namespace + ".TravelPhotoReplyWrite", vo);
	}
	
	//여행 포토 댓글 삭제
	@Override
	public int TravelPhotoReplyDelete(int prrid) throws Exception {
		return sqlSession.delete(namespace + ".TravelPhotoReplyDelete", prrid);
	}
	
	//파일 조회
	@Override
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception {
		return sqlSession.selectList(namespace + ".TravelPhotoSelectFileList", prid);
	}
	
	//여행 포토 내 게시글 리스트
	@Override
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".TravelPhotoMyList", map);
	}
	
	//여행 포토 내 게시글 총 갯수
	@Override
	public int MyPhotoTotalCount(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".getMyPhotoTotalCount", vo);
	}
	
	//탑 앵글러 출력
	@Override
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".TopAnglerView", map);
	}
	
	//탑 앵글러 총 갯수
	@Override
	public int TopAnglerTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTopAnglerTotalCount");
	}
}