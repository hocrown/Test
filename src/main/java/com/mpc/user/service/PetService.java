package com.mpc.user.service;

/*public class UserService implements IUserService {*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mpc.user.dao.PetRepository;
import com.mpc.user.model.PetModel;


@Service
public class PetService implements IPetService {

	@Autowired
	PetRepository petDao;

	
// 펫정보 입력
	@Override
	public void petInsert(PetModel model) {
		petDao.petInsert(model);	
	}

	



}
