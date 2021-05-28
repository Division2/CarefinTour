package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import javax.inject.Inject;

import com.spring.ex.admin.dao.AdminMemberDAO;
import com.spring.ex.vo.MemberVO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService{
	@Inject
	private AdminMemberDAO dao;
	
	//관리자용 회원목록
	@Override
	public List<MemberVO> getMemberList(HashMap<String, Integer> map) throws Exception {
		return dao.getMemberList(map);
	}
	//공지사항 게시물 총 갯수
	@Override
	public int MemberTotalCount() throws Exception {
		return dao.MemberTotalCount();
	}		
	//회원 정보 상세 조회 
    @Override
    public MemberVO ViewMember(int aid) throws Exception {
        return dao.ViewMember(aid);
    }
    //회원 정보 수정
    @Override
    public void memberUpdate(MemberVO vo) throws Exception {
    	dao.memberUpdate(vo);
    }
    //회원 정보 선택삭제
    @Override
    public void delete(String aid) throws Exception {
    	dao.delete(aid);
    }
    //관리자 회원 등록
  	@Override
  	public int AdminSignUp(MemberVO vo) throws Exception {
  		return dao.AdminSignUp(vo);
  	}
    
  	//관리자 회원 검색
  	@Override
  	public List<MemberVO> memberSearchList(HashMap<String, Object> map) throws Exception {
  		return dao.memberSearchList(map);
  	}
  	
  	//1:1 문의 검색 게시물 총 갯수
  	@Override
  	public int memberSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
  		return dao.memberSearchTotalCount(searchMap);
  	}
}