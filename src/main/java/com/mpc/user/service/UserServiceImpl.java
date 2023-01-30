package com.mpc.user.service;

import com.mpc.user.model.UserModel;

public interface UserServiceImpl {

	public void signup(UserModel user);
	public int idChk(String userId);
	public int nickChk();
	public int emailChk();
	public int pwValChk();
	public void petUpdate();
	public void petAdd();
	public void likeList();
	public void scrapList();
	public void followList();
	public void login();
	public void logout();
	public void myPageSearch();
	public void myPageUpdate();
	
	
}
