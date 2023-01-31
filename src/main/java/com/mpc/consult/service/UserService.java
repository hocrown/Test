package com.mpc.consult.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.mpc.user.dao.UserRepository;
import com.mpc.user.model.UserModel;

public class UserService implements UserRepository {

@Autowired UserRepository userRepository;

	@Override
	public int idChk(UserModel model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void petUpdate() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void petAdd() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void likeList() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void scrapList() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void followList() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserModel login(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void logout() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void myPageSearch() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void myPageUpdate() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void signup(UserModel user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int nickChk() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int emailChk() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int pwValChk() {
		// TODO Auto-generated method stub
		return 0;
	}

}
