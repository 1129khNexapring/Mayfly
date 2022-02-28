package org.oneday.mayfly.interest.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.interest.domain.Interest;
import org.oneday.mayfly.interest.store.InterestStore;
import org.springframework.stereotype.Repository;

@Repository
public class InterestStoreLogic implements InterestStore{
	
	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("InterestMapper.selectListCount");
		return totalCount;
	}
	
	@Override
	public List<Interest> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Interest> iList = sqlSession.selectList("InterestMapper.selectAllList", pi, rowBounds);
		return iList;
	}


	@Override
	public int insertInterest(SqlSession sqlSession, Interest interest) {
		int result = sqlSession.insert("InterestMapper.insertInterest", interest);
		return result;
	}

	@Override
	public int removeInterest(SqlSession sqlSession, int boardNo) {
		int result = sqlSession.delete("InterestMapper.deleteInterest", boardNo);
		return result;
	}


	

	
}
