package org.oneday.mayfly.review.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.review.domain.Review;

public interface ReviewStore {
	public int selectListCount(SqlSession sqlSession);
	public Review selectOneByNo(SqlSession sqlSession, int bookingNo);
	public List<Review> selectAll(SqlSession sqlSession, PageInfo pi);
	public int insertReview(SqlSession sqlSeesion, Review review);
	public int removeReview(SqlSession sqlSession, int bookingNo);
	public int modifyReview(SqlSession sqlSession, Review review);
}
