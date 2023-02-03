package com.mpc.user.model;

import java.sql.Date;

public class UserModel { 

	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private Date userRegDate;
	private String userNickname;
	private int userPhone;
	private String userPostNum;
	private String userAddress;
	private String userDetailAddress;
	
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
	
	public int getuserNo() {
		return userNo;
	}
	public void setuserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getUserRegDate() {
		return userRegDate;
	}
	public void setUserRegDate(Date userRegDate) {
		this.userRegDate = userRegDate;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public int getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(int userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserPostNum() {
		return userPostNum;
	}
	public void setUserPostNum(String userPostNum) {
		this.userPostNum = userPostNum;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserDetailAddress() {
		return userDetailAddress;
	}
	public void setUserDetailAddress(String userDetailAddress) {
		this.userDetailAddress = userDetailAddress;
	}
}