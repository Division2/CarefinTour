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

import com.spring.ex.dao.TravelPhotoBoardDAO;
import com.spring.ex.util.FileUtils;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public class TravelPhotoServiceImpl implements TravelPhotoService {
	
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private TravelPhotoBoardDAO dao;
	
	//게시물 목록
	@Override
	public List<TravelPhotoVO> TravelPhotoList(HashMap<String, Integer> map)throws Exception {
		return dao.TravelPhotoList(map);
	}
	
	//마이게시물 목록
	@Override
	public List<TravelPhotoVO> TravelPhotoMyList(HashMap<String, Integer> map)throws Exception {
		return dao.TravelPhotoMyList(map);
	}
	
	//게시물 작성
	@Override
	public int TravelPhotoWrite(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception {
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(travelPhotoVO, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.TravelPhotoWrite(list.get(i)); 
		}
		return size;
	}
	
	//게시글 조회수
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public TravelPhotoVO TravelPhotoRead(int prid) throws Exception {
		dao.TravelPhotoBoardHit(prid);
		
		return dao.TravelPhotoRead(prid);
	}
	
	//게시물 총 갯수
	@Override
	public int PhotoTotalCount() throws Exception {
		return dao.PhotoTotalCount();
	}
	
	//파일 조회
	@Override
	public List<Map<String, Object>> TravelPhotoSelectFileList(int prid) throws Exception {
		return dao.TravelPhotoSelectFileList(prid);
	}
	
	//게시글 수정
	@Override
	public void TravelPhotoUpdate(TravelPhotoVO travelPhotoVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception {
		
		dao.TravelPhotoUpdate(travelPhotoVO);
		
		List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(travelPhotoVO, files, fileNames, mpRequest);
		Map<String, Object> tempMap = null;
		int size = list.size();
		for(int i = 0; i < size; i++) {
			tempMap = list.get(i);		
			dao.TravelPhotoUpdateFile(tempMap);
		}
	}
	
	//게시물 삭제
	@Override
	public void TravelPhotoDelete(int prid) throws Exception {
		
		dao.TravelPhotoDelete(prid);
	}
	
	//탑 앵글러 출력
	@Override
	public List<TopAnlgerVO> TopanglerView(HashMap<String, Integer> map)throws Exception {
		return dao.TopanglerView(map);
	}
	
	//탑앵글러 등록 요청
	@Override
	public int TopanglerWrite(TopAnlgerVO topAnlgerVO, MultipartHttpServletRequest mpRequest) throws Exception {
		List<Map<String,Object>> list = fileUtils.parseInsertFishFileInfo(topAnlgerVO, mpRequest);
		
		int size = list.size();
		for(int i = 0; i < size; i++){ 
			dao.TopanglerWrite(list.get(i)); 
		}
		return size;
	}
	
	//탑앵글러 총 갯수
	@Override
	public int TopAnglerTotalCount() throws Exception {
		return dao.TopAnglerTotalCount();
	}
}