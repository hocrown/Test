package com.mpc.user.controller;


import java.lang.reflect.Member;

import javax.servlet.http.HttpSession;

import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mpc.user.model.UserModel;
import com.mpc.user.service.IUserService;
import com.mpc.user.service.UserServiceImpl;

@Controller
public class UserController {
	
	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping(value="/user/signup", method=RequestMethod.GET)
	public String signup() {
		return "user/form";
	}
	
	@RequestMapping(value="/user/login", method=RequestMethod.GET)
	public String login(String userId) {
		return "user/login";		
	}
	
	@RequestMapping(value="/user/insert", method=RequestMethod.POST)
	public String memberInsert(UserModel user, HttpSession session) {
		userService.signup(user);
		session.invalidate();
		return "index";
	}
// id 중복확인 컨트롤러
	@RequestMapping(value ="/signup", method=RequestMethod.POST )
	public int idchk(String userid) {
		int result = userService.idChk(userid);
		return result;
	}
	

}

