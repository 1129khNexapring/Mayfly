package org.oneday.mayfly.review.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.review.domain.Review;
import org.oneday.mayfly.review.service.ReviewService;
import org.oneday.mayfly.review.store.ReviewStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewStore rStore;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getListCount() {
		int totalCount = rStore.selectListCount(sqlSession);
		return totalCount;
	}
	
	@Override
	public List<Review> printAll(PageInfo pi) {
		List<Review> rList = rStore.selectAll(sqlSession, pi);
		return rList;
	}
	
	@Override
	public Review printOneByNo(int bookingNo) {
		Review review = rStore.selectOneByNo(sqlSession, bookingNo);
		return review;
	}
	
	@Override
	public int registerReview(Review review) {
		int result = rStore.insertReview(sqlSession, review);
		return result;
	}

	

	@Override
	public int reviewRemove(int bookingNo) {
		int result = rStore.removeReview(sqlSession, bookingNo);
		return result;
	}

	@Override
	public int reviewmodify(Review review) {
		int result = rStore.modifyReview(sqlSession, review);
		return result;
	}

	

	

}
