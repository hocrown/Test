package com.mpc.user.dao;

public interface UserRepository {

	public void signup(); //회원정보 입력 insert
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
