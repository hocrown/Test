package com.mpc.consult.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.mpc.user.dao.IUserRepository;
import com.mpc.user.model.UserModel;

public class UserService implements IUserRepository {

@Autowired IUserRepository userRepository;

	@Override
	public void signup(UserModel info) {
		userRepository.signup();
	}

	@Override
	public int idChk() {

		return 0;
	}

	@Override
	public int nickChk() {

		return 0;
	}

	@Override
	public int emailChk() {

		return 0;
	}

	@Override
	public int pwValChk() {

		return 0;
	}

}
