package org.oneday.mayfly.member.domain;

import java.sql.Date;

public class Member {

	private String userId;
	private String userPwd;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String userAddr;
	private String qPwd;
	private String aPwd;
	private Date enrollDate;
	private String mStatus;
	
	public Member() {}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getqPwd() {
		return qPwd;
	}

	public void setqPwd(String qPwd) {
		this.qPwd = qPwd;
	}

	public String getaPwd() {
		return aPwd;
	}

	public void setaPwd(String aPwd) {
		this.aPwd = aPwd;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getmStatus() {
		return mStatus;
	}

	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", userPhone="
				+ userPhone + ", userEmail=" + userEmail + ", userAddr=" + userAddr + ", qPwd=" + qPwd + ", aPwd="
				+ aPwd + ", enrollDate=" + enrollDate + ", mStatus=" + mStatus + "]";
	}

	
	
}
