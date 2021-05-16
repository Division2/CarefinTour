package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;


@Repository
public class TravelReviewDAOImpl implements TravelReviewDAO {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.spring.ex.TravelReviewMapper";
	
	//게시글 목록
	@Override
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map) throws Exception {
		return sql.selectList(namespace + ".TravelPhotoList",map);
	}
	
	//마이게시글 목록
	@Override
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map) throws Exception {
		return sql.selectList(namespace + ".TravelPhotoMyList",map);
	}
	
	// 게시글 작성
	@Override
	public int TravelPhotoWrite(Map<String, Object> map) throws Exception {
		return sql.insert(namespace + ".TravelPhotoWrite", map);
	}
	
	// 게시글 조회
	@Override
	public TravelPhotoVO TravelPhotoRead(int prid) throws Exception {
		return sql.selectOne(namespace + ".TravelPhotoRead", prid);
	}
	
	//여행포토 게시물 총 갯수
	@Override
	public int PhotoTotalCount() throws Exception {
		return sql.selectOne(namespace + ".getPhotoTotalCount");
	}
	
	//게시글 조회수
	@Override
	public void TravelPhotoBoardHit(int prid) throws Exception {
		sql.update(namespace  + ".TravelPhotoBoardHit", prid);
	}
	
	//파일 조회
	@Override
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception {
		return sql.selectList(namespace + ".TravelPhotoSelectFileList", prid);
	}
	
	//게시물 수정
	@Override
	public int TravelPhotoUpdateFile(Map<String, Object> map) throws Exception {
		return sql.update(namespace + ".TravelPhotoUpdateFile", map);
	}
	
	//게시물 수정
	@Override
	public void TravelPhotoUpdate(TravelPhotoVO travelPhotoVO) throws Exception {
		sql.update(namespace + ".TravelPhotoUpdate", travelPhotoVO);
	}
	
	//게시물 삭제
	@Override
	public void TravelPhotoDelete(int prid) throws Exception {
		sql.delete(namespace + ".TravelPhotoDelete", prid);
	}
	
	//탑 앵글러 출력
	@Override
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception {
		return sql.selectList(namespace + ".TopAnglerView", map);
	}
	
	//탑 앵글러 등록 요청
	@Override
	public int TopAnglerWrite(Map<String, Object> map) throws Exception {
		return sql.insert(namespace + ".TopAnglerWrite", map);
	}
	
	//탑 앵글러 총 갯수
	@Override
	public int TopAnglerTotalCount() throws Exception {
		return sql.selectOne(namespace + ".getTopAnglerTotalCount");
	}
}