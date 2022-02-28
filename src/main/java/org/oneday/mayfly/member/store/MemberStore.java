package org.oneday.mayfly.member.store;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.oneday.mayfly.member.domain.Member;

public interface MemberStore {
	public Member selectLoginMember(SqlSession session, Member member);

	public int insertMember(SqlSession session, Member member);

	public int updateMember(SqlSession session, Member member);
	
	public int deleteMember(SqlSession session, String userId);

	public int checkIdDup(SqlSession session, String userId);

	public Member selectMemberId(SqlSession session, Member member);

	public Member selectMemberPwd(SqlSession session, Member member);

	public Member selectOneById(SqlSession session, String userId);
	
}
