package com.mpc.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mpc.user.model.HospitalModel;
import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

public interface UserRepository {

	public void signup(UserModel user);
	public int idChk(UserModel userid); 
	public void petInsert(PetModel model); // pet 정보입력
	public UserModel login(String userId);
	public void logout();
	public void myPageSearch();
	public void myPageUpdate();
	
	//로그인 손영석
	void insertUserModel(UserModel userModel) ;
	UserModel selectUserModel(String userId);
	List<UserModel> selectAllUserModel();
	void deleteUserModel(UserModel userModel);
	String getUserPw(String userId);
	
	// 펫 list 불러오기 (문수지 작성)
	List<PetModel> selectPetListByUser(@Param("userNo") int userNo);
	// 병원 list 불러오기 (문수지 작성)
	List<HospitalModel> selectAllHospitalModel();
	public PetModel selectPet(int petNo);
	int userAuthChk(int userNo);
	UserModel selectUserInfo (@Param("userNo") int userNo);
	PetModel selectPetInfo (@Param("userNo") int userNo, @Param("petNo") int petNo);
	HospitalModel selectHInfo (@Param("hospitalId") int hospitalId);
	UserModel selectAdminUserInfo (@Param("userNo") int userNo);
	void updateUserModel(UserModel userModel);
	void updatePetModel(PetModel PetModel);
	public void insertCertificateModel(@Param("hospitalId") int hospitalId, @Param("userNo") int userNo);
	public int selectUserById(String userId);
	public void grantAuthUser(@Param("userNo") int userNo, @Param("atId") String atId);
	List<HospitalModel> selectHospitalModel(@Param("userNo")int userNo);
}
