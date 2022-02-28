package org.oneday.mayfly.comments.domain;

import java.sql.Date;

public class Comments {
	private int commentsNo;
	private Integer boardNo;
	private String commentsContents;
	private String commentsWriter;
	private Date commentsDate;
	
	public Comments() {}

	public Comments(int commentsNo, Integer boardNo, String commentsContents, String commentsWriter,
			Date commentsDate) {
		super();
		this.commentsNo = commentsNo;
		this.boardNo = boardNo;
		this.commentsContents = commentsContents;
		this.commentsWriter = commentsWriter;
		this.commentsDate = commentsDate;
	}

	public int getCommentsNo() {
		return commentsNo;
	}

	public void setCommentsNo(int commentsNo) {
		this.commentsNo = commentsNo;
	}

	public Integer getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(Integer boardNo) {
		this.boardNo = boardNo;
	}

	public String getCommentsContents() {
		return commentsContents;
	}

	public void setCommentsContents(String commentsContents) {
		this.commentsContents = commentsContents;
	}

	public String getCommentsWriter() {
		return commentsWriter;
	}

	public void setCommentsWriter(String commentsWriter) {
		this.commentsWriter = commentsWriter;
	}

	public Date getCommentsDate() {
		return commentsDate;
	}

	public void setCommentsDate(Date commentsDate) {
		this.commentsDate = commentsDate;
	}

	@Override
	public String toString() {
		return "Comments [commentsNo=" + commentsNo + ", boardNo=" + boardNo + ", commentsContents=" + commentsContents
				+ ", commentsWriter=" + commentsWriter + ", commentsDate=" + commentsDate + "]";
	}

	
	
}
