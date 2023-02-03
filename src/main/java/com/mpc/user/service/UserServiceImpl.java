package com.mpc.user.service;

import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

public interface UserServiceImpl {

	public void signup(UserModel user);
	public int idChk(UserModel model) ;
	public int nickChk();
	public int emailChk();
	public int pwValChk();
	public void petInsert(PetModel model); // pet 정보입력
	public void petUpdate(); 
	public void petAdd();
	public void likeList();
	public void scrapList();
	public void followList();
	public UserModel login(String userId);
	public void logout();
	public void myPageSearch();
	public void myPageUpdate();	
	
}
