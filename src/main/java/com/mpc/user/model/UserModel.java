package com.mpc.user.model;

import java.sql.Date;

import lombok.Data;

@Data
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
	
}