package org.oneday.mayfly.review.domain;

import java.sql.Date;

public class Review {
	private int bookingNo;
	private String contentName;
	private String reviewContent;
	private Date reviewDate;
	private String userId;
	
	public Review() {} // 기본 생성자

	public int getBookingNo() {
		return bookingNo;
	}

	public void setBookingNo(int bookingNo) {
		this.bookingNo = bookingNo;
	}

	public String getContentName() {
		return contentName;
	}

	public void setContentName(String contentName) {
		this.contentName = contentName;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Review [bookingNo=" + bookingNo + ", contentName=" + contentName + ", reviewContent=" + reviewContent
				+ ", reviewDate=" + reviewDate + ", userId=" + userId + "]";
	}
	
	
}
