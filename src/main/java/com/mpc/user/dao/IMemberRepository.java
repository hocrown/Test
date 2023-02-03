package com.mpc.user.dao;

import java.util.List;

import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;


public interface IMemberRepository {
	
	public void signup(UserModel user);
	public int idChk(UserModel userid); 
	public void petInsert(PetModel model); // pet 정보입력
	public UserModel login(String userId);
	
	void insertMember(UserModel user) ;
	UserModel selectMember(String userid);
	List<UserModel> selectAllMembers();
	void updateMember(UserModel user);
	void deleteMember(UserModel user);
	String getPassword(String userid);
}