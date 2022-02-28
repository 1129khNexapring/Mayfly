package org.oneday.mayfly.member.service.logic;

import org.mybatis.spring.SqlSessionTemplate;
import org.oneday.mayfly.member.domain.Member;
import org.oneday.mayfly.member.service.MemberService;
import org.oneday.mayfly.member.store.MemberStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberStore mStore;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public Member loginMember(Member member) {
		Member memberOne = mStore.selectLoginMember(sqlSession, member);
		return memberOne;
	}

	

	@Override
	public int registerMember(Member member) {
		int result = mStore.insertMember(sqlSession, member);
		return result;
	}
	
	@Override
	public int modifyMember(Member member) {
		int result = mStore.updateMember(sqlSession, member);
		return result;
	}

	@Override
	public int removeMember(String userId) {
		int result = mStore.deleteMember(sqlSession, userId);
		return result;
	}



	@Override
	public int checkIdDup(String userId) {
		int result = mStore.checkIdDup(sqlSession, userId);
		return result;
	}



	@Override
	public Member findMemberId(Member member) {
		Member memberOne = mStore.selectMemberId(sqlSession, member);
		return memberOne;
	}



	@Override
	public Member findMemberPwd(Member member) {
		Member memberOne = mStore.selectMemberPwd(sqlSession, member);
		return memberOne;
	}



	@Override
	public Member printOneById(String userId) {
		Member memberOne = mStore.selectOneById(sqlSession, userId);
		return memberOne;
	}  

}
