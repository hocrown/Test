package com.mpc.user.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mpc.user.model.HospitalModel;
import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

public interface IUserService {

	public void signup(UserModel user);
	public int idChk(UserModel model) ;
	public UserModel login(String userId);
	public void logout();
	public void myPageSearch();
	public void myPageUpdate();
	void insertUserModel(UserModel userModel);
	UserModel selectUserModel(String userId);
	List<UserModel> selectAllUserModel();
	String getUserPw(String userId);
	void deleteUserModel(UserModel userModel);

	public void petInsert(PetModel model); // pet 정보입력
	// pet list 불러오기 (문수지 작성)
	List<PetModel> selectPetListByUser(int userNo);

	public PetModel selectPet(int petNo); 
	
	// 병원 list 불러오기 (문수지 작성)
	List<HospitalModel> selectAllHospitalModel();
	int userAuthChk(int userNo);

	UserModel selectUserInfo (int userNo);
	PetModel selectPetInfo (int userNo, int petNo);
	HospitalModel selectHInfo (int hospitalId);
	UserModel selectAdminUserInfo (int userNo);
	void updateUserModel(UserModel userModel);	
	void updatePetModel(PetModel PetModel);
	public void insertCertificateModel(int hospitalId, int userNo);
	public int selectUserById(String userId);
	public void grantAuthUser(@Param("userNo") int userNo, @Param("atId") String auth);
	public List<HospitalModel> selectHospitalModel(int userNo);
}
