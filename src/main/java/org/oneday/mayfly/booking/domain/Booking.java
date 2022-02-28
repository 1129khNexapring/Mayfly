package org.oneday.mayfly.booking.domain;

import java.sql.Date;

public class Booking {
	
	private int bookingNo;
	private String userId;
	private Date bookingDate;
	private int bookingPeo;
	private String categoryName;
	private String contentName;
	private String optionName;
	private int bookingPrice;
	
	public Booking() {} // 기본 생성자

	public int getBookingNo() {
		return bookingNo;
	}

	public void setBookingNo(int bookingNo) {
		this.bookingNo = bookingNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public int getBookingPeo() {
		return bookingPeo;
	}

	public void setBookingPeo(int bookingPeo) {
		this.bookingPeo = bookingPeo;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getContentName() {
		return contentName;
	}

	public void setContentName(String contentName) {
		this.contentName = contentName;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	public int getBookingPrice() {
		return bookingPrice;
	}

	public void setBookingPrice(int bookingPrice) {
		this.bookingPrice = bookingPrice;
	}

	@Override
	public String toString() {
		return "Booking [bookingNo=" + bookingNo + ", userId=" + userId + ", bookingDate=" + bookingDate
				+ ", bookingPeo=" + bookingPeo + ", categoryName=" + categoryName + ", contentName=" + contentName
				+ ", optionName=" + optionName + ", bookingPrice=" + bookingPrice + "]";
	}

	
	
	
	
}
