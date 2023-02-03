package com.mpc.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpc.user.dao.IMemberRepository;
import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;


@Service
public class MemberService implements IMemberService {

	@Autowired
	IMemberRepository memberDao;
	
	@Override
	public void insertMember(UserModel userid) {
		memberDao.insertMember(userid);
	}

	@Override
	public UserModel selectMember(String userid) {
		return memberDao.selectMember(userid);
	}

	@Override
	public List<UserModel> selectAllMembers() {
		return memberDao.selectAllMembers();
	}

	@Override
	public void updateMember(UserModel userid) {
		memberDao.updateMember(userid);
	}

	@Override
	public void deleteMember(UserModel userid) {
		memberDao.deleteMember(userid);
	}

	@Override
	public String getPassword(String userid) {
		return memberDao.getPassword(userid);
	}

	@Override
	public void signup(UserModel user) {
		memberDao.signup(user);
		
	}

	@Override
	public int idChk(UserModel userid) {
		int result = memberDao.idChk(userid);
		System.out.println("result: " + result);
		return result;
	}

	@Override
	public void petInsert(PetModel model) {
		
		memberDao.petInsert(model);	
	}

	@Override
	public UserModel login(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserModel selectUserModel(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
}