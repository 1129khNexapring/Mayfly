package org.oneday.mayfly.board.domain;

import java.sql.Date;

public class Board {
	private int boardNo;
	private String boardTitle;
	private String boardContents;
	private String boardWriter;
	private String boardFilename;
	private String boardFileRename;
	private int boardCount;
	private Date bCreateDate;
	private Date bUpdateDate;
	private String bStatus;
	
	public Board() {}

	public Board(int boardNo, String boardTitle, String boardContents, String boardWriter, String boardFilename,
			String boardFileRename, int boardCount, Date bCreateDate, Date bUpdateDate, String bStatus) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContents = boardContents;
		this.boardWriter = boardWriter;
		this.boardFilename = boardFilename;
		this.boardFileRename = boardFileRename;
		this.boardCount = boardCount;
		this.bCreateDate = bCreateDate;
		this.bUpdateDate = bUpdateDate;
		this.bStatus = bStatus;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContents() {
		return boardContents;
	}

	public void setBoardContents(String boardContents) {
		this.boardContents = boardContents;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public String getBoardFilename() {
		return boardFilename;
	}

	public void setBoardFilename(String boardFilename) {
		this.boardFilename = boardFilename;
	}

	public String getBoardFileRename() {
		return boardFileRename;
	}

	public void setBoardFileRename(String boardFileRename) {
		this.boardFileRename = boardFileRename;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public Date getbCreateDate() {
		return bCreateDate;
	}

	public void setbCreateDate(Date bCreateDate) {
		this.bCreateDate = bCreateDate;
	}

	public Date getbUpdateDate() {
		return bUpdateDate;
	}

	public void setbUpdateDate(Date bUpdateDate) {
		this.bUpdateDate = bUpdateDate;
	}

	public String getbStatus() {
		return bStatus;
	}

	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContents=" + boardContents
				+ ", boardWriter=" + boardWriter + ", boardFilename=" + boardFilename + ", boardFileRename="
				+ boardFileRename + ", boardCount=" + boardCount + ", bCreateDate=" + bCreateDate + ", bUpdateDate="
				+ bUpdateDate + ", bStatus=" + bStatus + "]";
	}

}
