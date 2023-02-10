package com.mpc.user.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
/*public class UserService implements IUserService {*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpc.user.dao.UserRepository;
import com.mpc.user.model.HospitalModel;
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
	
	// pet list 불러오기 (문수지 작성) 
	@Override
	public List<PetModel> selectPetListByUser(int userNo) {
		return userRepository.selectPetListByUser(userNo);
	}
	
	// 병원 list 불러오기 (문수지 작성)
	@Override
	public List<HospitalModel> selectAllHospitalModel() {
		return userRepository.selectAllHospitalModel();
	}

	@Override
	public PetModel selectPet(int petNo) {
		return userRepository.selectPet(petNo);
	}

	@Override
	public int userAuthChk(int userNo) {
		int authChk = userRepository.userAuthChk(userNo);
		return authChk;
	}
	@Override
	public void updatePetModel(PetModel petModel) {
		userRepository.updatePetModel(petModel);
	}	
	@Override
	public UserModel selectUserInfo(int userNo) {
		return userRepository.selectUserInfo(userNo);
	}
	@Override
	public PetModel selectPetInfo(int userNo, int petNo) {
		return userRepository.selectPetInfo(userNo, petNo);
	}
	@Override
	public HospitalModel selectHInfo(int hospitalId) {
		return userRepository.selectHInfo(hospitalId);
	}
	@Override
	public UserModel selectAdminUserInfo(int userNo) {
		return userRepository.selectAdminUserInfo(userNo);
	}

	@Override
	public void insertCertificateModel(int hospitalId, int userNo) {
		userRepository.insertCertificateModel(hospitalId, userNo);
	}

	@Override
	public int selectUserById(String userId) {
		int userNo = userRepository.selectUserById(userId);
		return userNo;
	}
	
	@Override
	public void grantAuthUser(@Param("userNo") int userNo, @Param("atId") String atId) {
		userRepository.grantAuthUser(userNo, atId);
	}

	@Override
	public List<HospitalModel> selectHospitalModel(@Param("userNo") int userNo) {
		return userRepository.selectHospitalModel(userNo);
	}

}
