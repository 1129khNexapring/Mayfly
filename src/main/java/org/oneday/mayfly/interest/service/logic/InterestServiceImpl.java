package org.oneday.mayfly.interest.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.interest.domain.Interest;
import org.oneday.mayfly.interest.service.InterestService;
import org.oneday.mayfly.interest.store.InterestStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InterestServiceImpl implements InterestService{

	@Autowired
	private InterestStore iStore;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getListCount() {
		int totalCount = iStore.selectListCount(sqlSession);
		return totalCount;
	}
	
	@Override
	public List<Interest> printAll(PageInfo pi) {
		List<Interest> iList = iStore.selectAll(sqlSession, pi);
		return iList;
	}
	
	@Override
	public int regiesterInterest(Interest interest) {
		int result = iStore.insertInterest(sqlSession, interest);
		return result;
	}

	@Override
	public int removeOneByNo(int boardNo) {
		int result = iStore.removeInterest(sqlSession, boardNo);
		return result;
	}

	

	

}
