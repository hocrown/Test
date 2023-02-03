package com.mpc.user.dao;

import java.util.List;


import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

public interface UserRepository {

	public void signup(UserModel user);
	public int idChk(UserModel userid); 
	public void petInsert(PetModel model); // pet 정보입력
	public UserModel login(String userId);
	public void logout();
	public void myPageSearch();
	public void myPageUpdate();
	
	//로그인 손영석
	void insertUserModel(UserModel userModel) ;
	UserModel selectUserModel(String userId);
	List<UserModel> selectAllUserModel();
	void updateUserModel(UserModel userModel);
	void deleteUserModel(UserModel userModel);
	String getUserPw(String userId);

}
