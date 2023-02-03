package com.mpc.user.service;

import java.util.List;

/*public class UserService implements IUserService {*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpc.user.dao.UserRepository;
import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

@Service
public class UserService implements IUserService  {

	@Autowired
	UserRepository userRepository;

//회원정보 입력
	@Override
	public void signup(UserModel user) {
		
		userRepository.signup(user);		
	}
	
//아이디중복체크 
	@Override
	public int idChk(UserModel userid) {
		int result = userRepository.idChk(userid);
		System.out.println("result: " + result);
		return result;
	}
	
// 펫정보 입력
	@Override
	public void petInsert(PetModel model) {
		userRepository.petInsert(model);	
	}
	
	@Override
	public void insertUserModel(UserModel userModel) {
		userRepository.insertUserModel(userModel);
	}

	@Override
	public UserModel selectUserModel(String userId) {
		return userRepository.selectUserModel(userId);
	}

	@Override
	public List<UserModel> selectAllUserModel() {
		return userRepository.selectAllUserModel();
	}

	@Override
	public void updateUserModel(UserModel userModel) {
		userRepository.updateUserModel(userModel);
	}

	@Override
	public void deleteUserModel(UserModel userModel) {
		userRepository.deleteUserModel(userModel);
	}

	@Override
	public String getUserPw(String userId) {
		return userRepository.getUserPw(userId);
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


}
