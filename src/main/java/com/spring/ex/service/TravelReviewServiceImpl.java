package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.dao.TravelReviewDAO;
import com.spring.ex.util.FileUtils;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.ReplyVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public class TravelReviewServiceImpl implements TravelReviewService {
	
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private TravelReviewDAO dao;

	//여행 포토 작성
	@Override
	public int TravelPhotoWrite(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception {
		List<Map<String,Object>> fileList = fileUtils.parseInsertFileInfo(travelPhotoVO, mpRequest); 
		
		int size = fileList.size();
		for(int i = 0; i < size; i++){ 
			dao.TravelPhotoWrite(fileList.get(i)); 
		}
		return size;
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

	//여행 포토 총 갯수
	@Override
	public int TravelPhotoTotalCount() throws Exception {
		return dao.TravelPhotoTotalCount();
	}

	//여행 포토 수정(사진 & 내용)
	@Override
	public void TravelPhotoModify(TravelPhotoVO travelPhotoVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception {

		dao.TravelPhotoModify(travelPhotoVO);
		
		List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(travelPhotoVO, files, fileNames, mpRequest);
		
		Map<String, Object> tempMap = null;
		
		int size = list.size();
		for(int i = 0; i < size; i++) {
			tempMap = list.get(i);		
			dao.TravelPhotoUpdateFile(tempMap);
		}
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
	public List<ReplyVO> TravelPhotoReplyView(int prid) throws Exception {
		return dao.TravelPhotoReplyView(prid);
	}

	//파일 조회
	@Override
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception {
		return dao.TravelPhotoSelectFileList(prid);
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