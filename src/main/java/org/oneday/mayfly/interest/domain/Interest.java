package org.oneday.mayfly.interest.domain;

import java.sql.Date;

public class Interest {
	private int boardNo;
	private int contentNo;
	private String contentName;
	private String userId;
	private Date iCreateDate;
	
	public Interest() {}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getContentNo() {
		return contentNo;
	}

	public void setContentNo(int contentNo) {
		this.contentNo = contentNo;
	}

	public String getContentName() {
		return contentName;
	}

	public void setContentName(String contentName) {
		this.contentName = contentName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getiCreateDate() {
		return iCreateDate;
	}

	public void setiCreateDate(Date iCreateDate) {
		this.iCreateDate = iCreateDate;
	}

	@Override
	public String toString() {
		return "Interest [boardNo=" + boardNo + ", contentNo=" + contentNo + ", contentName=" + contentName
				+ ", userId=" + userId + ", iCreateDate=" + iCreateDate + "]";
	}

	
	
}
