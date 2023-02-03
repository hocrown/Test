package com.mpc.user.service;

import java.util.List;

import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

public interface IUserService {

	public void signup(UserModel user);
	public int idChk(UserModel model) ;
	public void petInsert(PetModel model); // pet 정보입력
	public UserModel login(String userId);
	public void logout();
	public void myPageSearch();
	public void myPageUpdate();
	void insertUserModel(UserModel userModel);
	UserModel selectUserModel(String userId);
	List<UserModel> selectAllUserModel();
	String getUserPw(String userId);
	void deleteUserModel(UserModel userModel);
	void updateUserModel(UserModel userModel);		
	
}
