package org.oneday.mayfly.qna.domain;

import java.sql.Date;

public class Qna {

	private int qnaNo;
	private String qnaTitle;
	private String qnaContent;
	private String qnaWriter;
	private String qnaFilename;
	private String qnaFileRename;
	private Date qnaDate;
	//private Date qCreateDate;
	//private Date qUpdateDate;
	private String qStatus;
	
	private String answerContent;
	private String answerWriter;
	private Date answerDate;
	
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public String getQnaWriter() {
		return qnaWriter;
	}
	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}
	public String getQnaFilename() {
		return qnaFilename;
	}
	public void setQnaFilename(String qnaFilename) {
		this.qnaFilename = qnaFilename;
	}
	public String getQnaFileRename() {
		return qnaFileRename;
	}
	public void setQnaFileRename(String qnaFileRename) {
		this.qnaFileRename = qnaFileRename;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
//	public Date getqCreateDate() {
//		return qCreateDate;
//	}
//	public void setqCreateDate(Date qCreateDate) {
//		this.qCreateDate = qCreateDate;
//	}
	public String getqStatus() {
		return qStatus;
	}
	public void setqStatus(String qStatus) {
		this.qStatus = qStatus;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public String getAnswerWriter() {
		return answerWriter;
	}
	public void setAnswerWriter(String answerWriter) {
		this.answerWriter = answerWriter;
	}
	public Date getAnswerDate() {
		return answerDate;
	}
	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}
	
	
	@Override
	public String toString() {
		return "Qna [qnaNo=" + qnaNo + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent + ", qnaWriter="
				+ qnaWriter + ", qnaFilename=" + qnaFilename + ", qnaFileRename=" + qnaFileRename + ", qnaDate="
				+ qnaDate + ", qStatus=" + qStatus + ", answerContent=" + answerContent + ", answerWriter="
				+ answerWriter + ", answerDate=" + answerDate + "]";
	}

	
	
}
