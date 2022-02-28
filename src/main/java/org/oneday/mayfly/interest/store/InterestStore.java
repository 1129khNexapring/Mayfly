package org.oneday.mayfly.interest.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.interest.domain.Interest;

public interface InterestStore {
	public int selectListCount(SqlSession sqlSession);
	public int insertInterest(SqlSession session, Interest interest);
	public List<Interest> selectAll(SqlSession session, PageInfo pi);
	public int removeInterest(SqlSession session, int boardNo);
	
}
