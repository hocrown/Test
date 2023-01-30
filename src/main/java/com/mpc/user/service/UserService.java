package com.mpc.user.service;

public class UserService implements IUserService {
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mpc.user.dao.UserRepository;
import com.mpc.user.model.UserModel;

@Service
public class UserService implements UserServiceImpl {

	@Autowired
	UserRepository repositoryDao;

	@Override
	public void signup(UserModel user) {
		
		repositoryDao.signup(user);
		
	}

	@Override
	public int idChk(String userId) {
		repositoryDao.idChk(userId);
		return 0;
	}

	@Override
	public int nickChk() {
		// TODO Auto-generated method stub
		repositoryDao.nickChk();
		return 0;
	}

	@Override
	public int emailChk() {
		// TODO Auto-generated method stub
		repositoryDao.emailChk();
		return 0;
	}

	@Override
	public int pwValChk() {
		// TODO Auto-generated method stub
		repositoryDao.pwValChk();
		return 0;
	}

	@Override
	public void petUpdate() {
		// TODO Auto-generated method stub
		repositoryDao.petUpdate();
	}

	@Override
	public void petAdd() {
		// TODO Auto-generated method stub
		repositoryDao.petAdd();
	}

	@Override
	public void likeList() {
		// TODO Auto-generated method stub
		repositoryDao.likeList();
	}

	@Override
	public void scrapList() {
		// TODO Auto-generated method stub
		repositoryDao.scrapList();
	}

	@Override
	public void followList() {
		// TODO Auto-generated method stub
		repositoryDao.followList();
	}

	@Override
	public void login() {
		// TODO Auto-generated method stub
		repositoryDao.login();
	}

	@Override
	public void logout() {
		// TODO Auto-generated method stub
		repositoryDao.logout();
	}

	@Override
	public void myPageSearch() {
		// TODO Auto-generated method stub
		repositoryDao.myPageSearch();
	}

	@Override
	public void myPageUpdate() {
		// TODO Auto-generated method stub
		repositoryDao.myPageSearch();
	}

}
