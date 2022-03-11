package org.oneday.mayfly.contents.domain;

import java.util.Date;

public class Contents {
	private int contentsNo;
	private String contentsType;
	private String contentsImg;
	private String contentsImg1;
	private String contentsImg2;
	private String contentsImg3;
	private String contentsTitle;
	private String contentsDetail;
	private Date contentsDay;
	private int contentsViews;
	private String contentsWriter;
	private Date contentsEnd;
	 

	public String getContentsImg1() {
		return contentsImg1;
	}

	public void setContentsImg1(String contentsImg1) {
		this.contentsImg1 = contentsImg1;
	}

	public String getContentsImg2() {
		return contentsImg2;
	}

	public void setContentsImg2(String contentsImg2) {
		this.contentsImg2 = contentsImg2;
	}

	public String getContentsImg3() {
		return contentsImg3;
	}

	public void setContentsImg3(String contentsImg3) {
		this.contentsImg3 = contentsImg3;
	}

	public Date getContentsEnd() {
		return contentsEnd;
	}

	public void setContentsEnd(Date contentsEnd) {
		this.contentsEnd = contentsEnd;
	}

	public Contents() {}
	
	public String getContentsImg() {
		return contentsImg;
	}
	
	public void setContentsImg(String contentsImage) {
		this.contentsImg = contentsImage;
	}

	public int getContentsNo() {
		return contentsNo;
	}

	public void setContentsNo(int contentsNo) {
		this.contentsNo = contentsNo;
	}

	public String getContentsType() {
		return contentsType;
	}

	public void setContentsType(String contentsType) {
		this.contentsType = contentsType;
	}

	public String getContentsTitle() {
		return contentsTitle;
	}

	public void setContentsTitle(String contentsTitle) {
		this.contentsTitle = contentsTitle;
	}

	public String getContentsDetail() {
		return contentsDetail;
	}

	public void setContentsDetail(String contentsDetail) {
		this.contentsDetail = contentsDetail;
	}

	public Date getContentsDay() {
		return contentsDay;
	}

	public void setContentsDay(Date contentsDay) {
		this.contentsDay = contentsDay;
	}

	public int getContentsViews() {
		return contentsViews;
	}

	public void setContentsViews(int contentsViews) {
		this.contentsViews = contentsViews;
	}

	public String getContentsWriter() {
		return contentsWriter;
	}

	public void setContentsWriter(String contentsWriter) {
		this.contentsWriter = contentsWriter;
	}

	@Override
	public String toString() {
		return "Contents [contentsNo=" + contentsNo + ", contentsType=" + contentsType + ", contentsImg=" + contentsImg
				+ ", contentsImg1=" + contentsImg1 + ", contentsImg2=" + contentsImg2 + ", contentsImg3=" + contentsImg3
				+ ", contentsTitle=" + contentsTitle + ", contentsDetail=" + contentsDetail + ", contentsDay="
				+ contentsDay + ", contentsViews=" + contentsViews + ", contentsWriter=" + contentsWriter
				+ ", contentsEnd=" + contentsEnd + "]";
	}
	
	
	

}
