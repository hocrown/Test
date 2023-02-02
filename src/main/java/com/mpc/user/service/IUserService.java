package com.mpc.user.service;

import java.util.List;

import com.mpc.user.model.UserModel;

public interface IUserService {
	
	
	//로그인 손영석
	void insertUserModel(UserModel userModel) ;
	UserModel selectUserModel(String userId);
	List<UserModel> selectAllUserModel();
	void updateUserModel(UserModel userModel);
	void deleteUserModel(UserModel userModel);
	String getUserPw(String userId);

}
