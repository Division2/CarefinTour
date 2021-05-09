package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.MemberMapper";
	
	//전체 멤버 출력
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return null;
	}

	//회원 로그인
	@Override
	public MemberDTO Login(MemberDTO dto) throws Exception {
		return sqlSession.selectOne(namespace + ".MemberLogin", dto);
	}
	
	//회원 로그인 시 lastDate 갱신
	@Override
	public int LoginDateRenewal(MemberDTO dto) throws Exception {
		return sqlSession.update(namespace + ".MemberLoginDateLog", dto);
	}
	
	//회원가입
	@Override
	public int SignUp(MemberDTO dto) throws Exception {
		return sqlSession.insert(namespace + ".MemberSignUp", dto);
	}
	
	//회원가입 시 아이디 중복확인
	@Override
	public MemberDTO IDCheck(MemberDTO dto) throws Exception {
		return sqlSession.selectOne(namespace + ".IDCheck", dto);
	}
	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		sqlSession.update("MemberMapper.info",dto);
	}
	
}