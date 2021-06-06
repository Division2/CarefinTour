package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.OrderVO;

@Repository
public class AdminMemberDAOImpl implements AdminMemberDAO {
	
	@Inject SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.AdminMemberMapper";
	
	//관리자용 회원상세정보
    @Override
    public MemberVO ViewMember(int aid) throws Exception {
        return sqlSession.selectOne(namespace+ ".viewMember", aid);
    }
    
    //관리자용 회원정보수정
    @Override
    public void memberUpdate(MemberVO vo) throws Exception {
    	sqlSession.update(namespace+".updateMember", vo);
    }
    
    //회원정보 선택삭제
    @Override
    public void delete(String aid) throws Exception {
    	sqlSession.delete(namespace +".delete" , aid);
    }
    
    //관리자용 회원 등록
  	@Override
  	public int AdminSignUp(MemberVO vo) throws Exception {
  		return sqlSession.insert(namespace + ".AdminMemberSignUp", vo);
  	}
  	
	//회원 검색
	@Override
	public List<MemberVO> memberSearchList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".memberSearchView", map);
	}
	
	//1:1 문의 검색 게시물 총 갯수
	@Override
	public int memberSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return sqlSession.selectOne(namespace + ".getmemberSearchTotalCount", searchMap);
	}
	
	//관리자용 회원목록
	@Override
	public List<MemberVO> getMemberList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace+".memberList",map);
	}
	//회원 총명
	@Override
	public int MemberTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getMemberTotalCount");
	}
	//회원1:1문의내역
	@Override
	public List<InquiryVO> viewInquiry(String userId) throws Exception {
		return sqlSession.selectList(namespace+".viewInquiry", userId);
	}
	//회원 구매내역
	@Override
	public List<OrderVO> viewOrder(String userId) throws Exception {
		return sqlSession.selectList(namespace+".viewOrder",userId);
	}
}