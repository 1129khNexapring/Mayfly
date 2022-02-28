package org.oneday.mayfly.review.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.review.domain.Review;
import org.oneday.mayfly.review.store.ReviewStore;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewStoreLogic implements ReviewStore {
	
	@Override
	public List<Review> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Review> rList = sqlSession.selectList("ReviewMapper.selectAllList", pi, rowBounds);
		return rList;
	}

	@Override
	public Review selectOneByNo(SqlSession sqlSession, int bookingNo) {
		Review review = sqlSession.selectOne("ReviewMapper.selectOneByNo", bookingNo);
		return review;
	}
	
	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("ReviewMapper.selectListCount");
		return totalCount;
	}

	@Override
	public int insertReview(SqlSession sqlSession, Review review) {
		int result = sqlSession.insert("ReviewMapper.insertReview", review);
		return result;
	}

	@Override
	public int removeReview(SqlSession sqlSession, int bookingNo) {
		int result = sqlSession.delete("ReviewMapper.deleteReview", bookingNo);
		return result;
	}

	@Override
	public int modifyReview(SqlSession sqlSession, Review review) {
		int result = sqlSession.update("ReviewMapper.updateReview", review);
		return result;
	}

	

	

	

}
