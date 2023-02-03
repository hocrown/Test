package com.mpc.user.controller;




import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mpc.user.model.PetModel;

import com.mpc.user.service.IPetService;



@Controller
public class PetController {
	@Autowired
	IPetService petService;
	
	
	
	@RequestMapping(value="/mypage/mypet", method=RequestMethod.POST)
	public String petInsert(PetModel model,HttpSession session) {
		petService.petInsert(model);
		session.invalidate();
		return "index";
	}
	
	

}

