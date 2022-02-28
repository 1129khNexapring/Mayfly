package org.oneday.mayfly.member.service;

import org.oneday.mayfly.member.domain.Member;

public interface MemberService {

	public Member loginMember(Member member);
	
	public int registerMember(Member member);

	public int modifyMember(Member member);
	
	public int removeMember(String userId);

	public int checkIdDup(String userId);

	public Member findMemberId(Member member);

	public Member findMemberPwd(Member member);

	public Member printOneById(String userId);

}
