package com.mpc.user.controller;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//추가한것들
import org.springframework.dao.DuplicateKeyException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import org.mybatis.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mpc.user.model.PetModel;
import com.mpc.user.model.UserModel;

import com.mpc.user.service.IPetService;
import com.mpc.user.service.IUserService;



@Controller
public class PetController {
	static final Logger logger = LoggerFactory.getLogger(PetController.class);
	@Autowired
	IPetService petService;
	
	
	
	@RequestMapping(value="/mypage/mypet", method=RequestMethod.POST)
	public String petInsert(PetModel model,HttpSession session) {
		petService.petInsert(model);
		session.invalidate();
		return "index";
	}
	
	

}

