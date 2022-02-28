package org.oneday.mayfly.review.service;

import java.util.List;

import org.oneday.mayfly.booking.domain.PageInfo;
import org.oneday.mayfly.review.domain.Review;

public interface ReviewService {
	public List<Review> printAll(PageInfo pi);
	public Review printOneByNo(int bookingNo);
	public int getListCount();
	public int registerReview(Review review);
	public int reviewRemove(int bookingNo);
	public int reviewmodify(Review review);
}
