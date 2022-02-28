package org.oneday.mayfly.member.store.logic;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.oneday.mayfly.member.domain.Member;
import org.oneday.mayfly.member.store.MemberStore;
import org.springframework.stereotype.Repository;

@Repository
public class MemberStoreLogic implements MemberStore{


	@Override
	public Member selectLoginMember(SqlSession session, Member member) {
		Member memberOne = session.selectOne("MemberMapper.selectLoginMember",member);
		return memberOne;
	}

	
	@Override
	public int insertMember(SqlSession session, Member member) {
		int result = session.insert("MemberMapper.insertMember",member);
		return result;
	}

	@Override
	public int updateMember(SqlSession session, Member member) {
		int result = session.update("MemberMapper.updateMember",member);
		return result;
	}

	@Override
	public int deleteMember(SqlSession session, String userId) {
		int result = session.update("MemberMapper.deleteMember", userId);
		return result;
	}


	@Override
	public int checkIdDup(SqlSession session, String userId) {
		int result =session.selectOne("MemberMapper.checkIdDup",userId);
		return result;
	}


	@Override
	public Member selectMemberId(SqlSession session, Member member) {
		Member memberOne = session.selectOne("MemberMapper.selectMemberId",member);
		return memberOne;
	}


	@Override
	public Member selectMemberPwd(SqlSession session, Member member) {
		Member memberOne = session.selectOne("MemberMapper.selectMemberPwd",member);
		return memberOne;
	}


	@Override
	public Member selectOneById(SqlSession session, String userId) {
		Member memberOne = session.selectOne("MemberMapper.selectOneById",userId);
		return memberOne;
	}
	
}
