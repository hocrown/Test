package com.mpc.user.dao;

import com.mpc.user.model.UserModel;

public interface UserRepository {

	public void signup(UserModel user);
	public int idChk(UserModel userid); 
	public int nickChk();
	public int emailChk();
	public int pwValChk();
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
