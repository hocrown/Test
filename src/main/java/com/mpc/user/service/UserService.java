package com.mpc.user.service;

/*public class UserService implements IUserService {*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpc.user.dao.UserRepository;
import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

@Service
public class UserService implements UserServiceImpl {

	@Autowired
	UserRepository repositoryDao;

//회원정보 입력
	@Override
	public void signup(UserModel user) {
		
		repositoryDao.signup(user);		
	}
	
//아이디중복체크 
	@Override
	public int idChk(UserModel userid) {
		int result = repositoryDao.idChk(userid);
		System.out.println("result: " + result);
		return result;
	}
	
// 펫정보 입력
	@Override
	public void petInsert(PetModel model) {
		repositoryDao.petInsert(model);	
	}
	
	@Override
	public void insertUserModel(UserModel userModel) {
		userDao.insertUserModel(userModel);
	}

	@Override
	public UserModel selectUserModel(String userId) {
		return userDao.selectUserModel(userId);
	}

	@Override
	public List<UserModel> selectAllUserModel() {
		return userDao.selectAllUserModel();
	}

	@Override
	public void updateUserModel(UserModel userModel) {
		userDao.updateUserModel(userModel);
	}

	@Override
	public void deleteUserModel(UserModel userModel) {
		userDao.deleteUserModel(userModel);
	}

	@Override
	public String getUserPw(String userId) {
		return userDao.getUserPw(userId);
	}


}
